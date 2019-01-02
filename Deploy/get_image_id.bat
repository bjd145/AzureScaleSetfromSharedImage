@echo off

for /F "tokens=*" %%a IN ('az sig image-version list -g $(SharedImageResourceGroup) -r $(SharedImageGallery) -i $(SharedImageGalleryImageName) --query "[*].id |  [-1]"') do (call SET image_id=%%a)
call echo "##vso[task.setvariable variable=SharedImageResourceId]%image_id%"