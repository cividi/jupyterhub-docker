cd jovyan
for D in *; do
    if [ -d "${D}" ]; then
        echo "Processing ${D}"
        cd "${D}"
        git status
        git commit -a -m "Autosave"
        git push
        cd ..
    fi
done
