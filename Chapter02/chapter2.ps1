$rgBicepFile = ".\rg.bicep"
$ch2BicepFile = ".\Chapter02\chapter2.bicep"
$resourceGroupName = "chapter2"

$parameters = @{
    location = "eastus2"
    name = $resourceGroupName
}

New-AzDeployment -Location "eastus2" -Name "chapter2" -TemplateFile $rgBicepFile -TemplateParameterObject $parameters

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $ch2BicepFile

Write-Host "Azure Deployment for Chapter 2 completed successfully."
