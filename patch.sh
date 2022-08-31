# patch.sh is used to apply the NF's patch to submodule when NF's PR was created

NF_LIST="nrf amf smf udr pcf udm nssf ausf upf n3iwf"

for NF in ${NF_LIST}; do
    echo "${$NF^^'_PATCH'}"
done
