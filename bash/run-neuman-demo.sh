experiment="baseline"
SEQUENCES=("seattle")
for SEQUENCE in ${SEQUENCES[@]}; do
    dataset="neuman/$SEQUENCE"

    echo "> (1) Preprocessing sequence..."
    bash scripts/custom/process-sequence.sh ./data/custom/$SEQUENCE neutral

    echo "> (2) Fitting..."
    python fit.py --config-name SNARF_NGP_fitting dataset=$dataset experiment=$experiment deformer=smpl train.max_epochs=200

    echo "> (3) Training..."
    python train.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose" train.max_epochs=200 sampler.dilate=8
    python novel_view.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"

    echo "> (4) Animating..."
    python animate.py --config-name demo dataset=$dataset experiment=$experiment deformer.opt.cano_pose="a_pose"
done
