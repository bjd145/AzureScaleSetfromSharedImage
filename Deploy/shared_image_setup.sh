#!/bin/bash

export RG=$1

publisher="bjdazure.demo"
gallery="BjdAzureDemoGallery"
offer="BaseIISStandard"
sku="BaseIIS"
replica=1
location="southcentralus"

az group create -n $RG -l $location
az sig create -g $RG --gallery-name $gallery
az sig image-definition create -g $RG --gallery-name $gallery --gallery-image-definition $offer --publisher $publisher --offer $offer --sku $sku --os-type Windows