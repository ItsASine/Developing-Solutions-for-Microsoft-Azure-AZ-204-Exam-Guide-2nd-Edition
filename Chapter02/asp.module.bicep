param name string
param location string

@allowed(['windows', 'linux'])
param kind string

param sku string
param skucode string

resource asp 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: name
  location: location
  kind: kind
  tags: {}
  properties: {
    reserved: kind == 'linux' ? true : false
    zoneRedundant: false
  }
  sku: {
    tier: sku
    name: skucode
  }
}
