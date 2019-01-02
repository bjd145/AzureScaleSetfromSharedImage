# Introduction 
This repository shows how to create a VM Scale Set from an Golden image published to the Azure Shared Image Gallery.

## PreReq
* Register for Shared Image Gallery Preview - https://azure.microsoft.com/en-us/blog/announcing-the-public-preview-of-shared-image-gallery/
* Run .\Deploy\shared_image_setup.sh. 
    * This will setup the Shared Image Gallery and Image Name.  The Pipeline deployment will create new verions within the Gallery

## Golden Image Creation 
* A Golden Image is created from the base Azure Windows 2016 Datacenter Image
* IIS is installed and a default page created.
* This process is handled by Packer
* The resultant image is published to multiple Azure regions via an ARM Template

## VM Scale Set Image
* The VMSS image is created from the Golden Image created above
* A powershell script determines the latest build via the buildid tag on image 
* A new image is created with additional code deployed to IIS
* A VMSS is created via an ARM Template with a Custom Script Extenion attached to do a final code push before adding to the Load Balancer 
