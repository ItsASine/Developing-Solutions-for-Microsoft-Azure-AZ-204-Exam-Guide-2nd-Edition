

module windowsAsp 'asp.module.bicep' = {
  name: 'windowsAsp'
  params: {
      name: 'asp-free-windows'
      location: 'East US 2'
      kind: 'windows'
      sku: 'Free'
      skucode: 'F1'
    }
}

module linuxAsp 'asp.module.bicep' = {
  name: 'linuxAsp'
  params: {
      name: 'asp-free-linux'
      location: 'East US 2'
      kind: 'linux'
      sku: 'Free'
      skucode: 'F1'
    }
}
