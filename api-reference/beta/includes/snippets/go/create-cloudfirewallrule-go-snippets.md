---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewPolicyRule()
name := "Block outbound to risky destinations"
requestBody.SetName(&name) 
description := "Block traffic to specific IPs on common ports"
requestBody.SetDescription(&description) 
priority := int64(100)
requestBody.SetPriority(&priority) 
action := graphmodels.BLOCK_CLOUDFIREWALLACTION 
requestBody.SetAction(&action) 
settings := graphmodelsnetworkaccess.NewCloudFirewallRuleSettings()
status := graphmodels.ENABLED_SECURITYRULESTATUS 
settings.SetStatus(&status) 
requestBody.SetSettings(settings)
matchingConditions := graphmodelsnetworkaccess.NewCloudFirewallMatchingConditions()
sources := graphmodelsnetworkaccess.NewCloudFirewallSourceMatching()


cloudFirewallSourceAddress := graphmodelsnetworkaccess.NewCloudFirewallSourceIpAddress()
values := []string {
	"192.168.1.1",
	"192.168.0.0/16",
	"172.16.0.0-172.16.255.255",
}
cloudFirewallSourceAddress.SetValues(values)

addresses := []graphmodelsnetworkaccess.CloudFirewallSourceAddressable {
	cloudFirewallSourceAddress,
}
sources.SetAddresses(addresses)
ports := []string {
	"80",
	"443",
	"445-447",
}
sources.SetPorts(ports)
matchingConditions.SetSources(sources)
destinations := graphmodelsnetworkaccess.NewCloudFirewallDestinationMatching()


cloudFirewallDestinationAddress := graphmodelsnetworkaccess.NewCloudFirewallDestinationIpAddress()
values := []string {
	"10.0.0.1",
}
cloudFirewallDestinationAddress.SetValues(values)

addresses := []graphmodelsnetworkaccess.CloudFirewallDestinationAddressable {
	cloudFirewallDestinationAddress,
}
destinations.SetAddresses(addresses)
ports := []string {
	"80",
	"443",
	"445-447",
}
destinations.SetPorts(ports)
protocols := graphmodels.TCP_CLOUDFIREWALLPROTOCOL 
destinations.SetProtocols(&protocols) 
matchingConditions.SetDestinations(destinations)
requestBody.SetMatchingConditions(matchingConditions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policyRules, err := graphClient.NetworkAccess().CloudFirewallPolicies().ByCloudFirewallPolicyId("cloudFirewallPolicy-id").PolicyRules().Post(context.Background(), requestBody, nil)


```