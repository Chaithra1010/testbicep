resource aksCluster 'Microsoft.ContainerService/managedClusters@2021-03-01' = {
  name: 'testaks'
  location: 'westeurope'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    kubernetesVersion: '1.27'
    dnsPrefix: 'dnsprefix'
    enableRBAC: true
    agentPoolProfiles: [
      {
        name: 'agentpool'
        count: 3
        vmSize: 'Standard_DS2_v2'
        osType: 'Linux'
        mode: 'System'
      }
    ]
   
    }
  }
 
