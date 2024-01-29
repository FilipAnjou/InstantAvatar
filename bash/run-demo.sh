experiment="demo"
SEQUENCES=("male-3-casual")
for SEQUENCE in ${SEQUENCES[@]}; do
    dataset="peoplesnapshot/$SEQUENCE"

    echo "> (1) Training..."
    python train.py --config-name SNARF_NGP dataset=$dataset experiment=$experiment

    echo "> (2) Animating..."
    python animate.py --config-name SNARF_NGP dataset=$dataset experiment=$experiment
done

