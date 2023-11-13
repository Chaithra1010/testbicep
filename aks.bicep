
resource aks 'Microsoft.ContainerService/managedClusters@2022-05-02-preview' = {
  name: 'aks101cluster'
  location: 'westeurope'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    dnsPrefix: aksdns
    agentPoolProfiles: [
      {
        name: 'agentpool'
        count: 3
        vmSize: standard_d2s_v3
        osType: 'Linux'
        mode: 'System'
      }
]
      }
    
output controlPlaneFQDN string = aks.properties.fqdn
