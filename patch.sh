# patch.sh is used to apply the NF's patch to submodule when NF's PR was created

NF_LIST="nrf amf smf udr pcf udm nssf ausf upf n3iwf"

for NF in ${NF_LIST}; do
    cd NFs/$NF
    PATCH=("${NF^^}_PATCH")
    echo ${!PATCH}
    if [ "${!PATCH}" != "" ];
    then
        echo "true"
        # curl ${!PATCH} | git apply
    fi
    cd ../..
done
