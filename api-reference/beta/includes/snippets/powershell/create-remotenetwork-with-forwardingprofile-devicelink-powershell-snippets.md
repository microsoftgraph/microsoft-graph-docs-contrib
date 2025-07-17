---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	name = "Bellevue branch w/ device link"
	region = "canadaEast"
	forwardingProfiles = @(
		@{
			id = "1adaf535-1e31-4e14-983f-2270408162bf"
		}
	)
	deviceLinks = @(
		@{
			name = "CPE1"
			ipAddress = "52.13.21.25"
			bandwidthCapacityInMbps = "mbps500"
			deviceVendor = "barracudaNetworks"
			bgpConfiguration = @{
				localIpAddress = "192.168.1.2"
				peerIpAddress = "10.1.1.2"
				asn = 65533
			}
			redundancyConfiguration = @{
				zoneLocalIpAddress = $null
				redundancyTier = "noRedundancy"
			}
			tunnelConfiguration = @{
				"@odata.type" = "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default"
				preSharedKey = "test123"
			}
		}
	)
}

New-MgBetaNetworkAccessConnectivityRemoteNetwork -BodyParameter $params

```