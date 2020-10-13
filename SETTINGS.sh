#GLOBAL SETTING
GPUS='all'                 #REQUIRED
DOCKER_BUILD_WITH_PULL='false' #['true','false']
SETTING_ALIAS=true

# -v ${PROJ_DIR}:~/
PROJ_DIR_HOST='~/'         #REQUIRED
PROJ_DIR_CONTAINER='~/'

# -v ${DATASET_DIR_H}:~/dataset
DATASET_DIR_HOST='~/'      #REQUIRED
DATASET_DIR_CONTAINER='~/dataset'

# -v ${OUTPUT_DIR_H} :~/output
OUTPUT_DIR_HOST='~/'       #REQUIRED
OUTPUT_DIR_CONTAINER='~/output'


# DOCKER-VSCODE SETTING
SETUP_DOCKER_VSCODE='true' #['true','false']
VS_PASSWORD='0000'         #REQUIRED
VS_CONTAINER_NAME='vscode_dl'
VS_IMAGE_NAME='deepo:code'

VS_DEFAULT_PORT_HOST='10022'
VS_CODE_PORT_HOST='18080'
VS_TB_PORT_HOST='16006'


#DOCKER-JUPYTER SETTING
SETUP_DOCKER_JUPYTERLAB='false' #['true','false']
JP_PASSWORD='0000'         #REQUIRED
JP_CONTAINER_NAME='jupyter_dl'
JP_IMAGE_NAME='deepo:jupyter'

JP_DEFAULT_PORT_HOST='20022'
JP_JUPYTER_PORT_HOST='28000'
JP_TB_PORT_HOST='26006'

#MISC
#Alias Names customizing
ALIAS_NVIDIA_SMI='gpu'
ALIAS_GPUSTAT='gpu2'

if [ $DOCKER_BUILD_WITH_PULL = 'true' ]
then
    VS_IMAGE_NAME='eungbean/deepo:code'
    JP_IMAGE_NAME='eungbean/deepo:jupyter'
fi  