# HostSecurityState resource type

Complex type containing stateful information about the host (includes devices, machines, etc.)

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|fqdn|String|Host FQDN (Fully Qualified Domain Name) (e.g. ```machine.company.com```)|
|isAzureAadJoined|Boolean|True if the host is domain joined to Azure Active Directory Domain Services|
|isAzureAadRegistered|Boolean|True if the host registered with Azure Active Directory Device Regsitration (e.g. BYOD devices - i.e. is not fully managed by enterprise)|
|isHybridAzureDomainJoined|Boolean|True if the host is domain joined to an on-premise Active Directory Domain|
|netBiosName|String|Local host name - i.e. without DNS domain name|
|privateIpAddress|String|Private (not routable) IPv4 or IPv6 Address (see https://tools.ietf.org/html/rfc1918) at the time of the alert|
|publicIpAddress|String|Publicly routable IPv4 or IPv6 Address (see https://tools.ietf.org/html/rfc1918) at time of the alert|
|riskScore|String|Provider-generated/calculated risk score of the host|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.HostSecurityState"
}-->

```json
{
  "fqdn": "String",
  "isAzureAadJoined": true,
  "isAzureAadRegistered": true,
  "isHybridAzureDomainJoined": true,
  "netBiosName": "String",
  "privateIpAddress": "String",
  "publicIpAddress": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "HostSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->