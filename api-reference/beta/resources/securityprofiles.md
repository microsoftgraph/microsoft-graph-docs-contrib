# Security profiles

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Security profiles represent security properties and an inventory of related entities (hosts, users, IPs, and so on) to provide additional context for [alerts](alert.md) and targets for actions. Security profiles are populated by integrated solutions at their discretion.

For example: 

- A solution will populate **hostSecurityProfile** for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against. 
- A provider will populate **ipSecurityProfile** for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|applicationSecurityProfiles|[applicationSecurityProfile](applicationsecurityprofile.md) collection| Read-only. Nullable.|
|fileSecurityProfiles|[fileSecurityProfile](filesecurityprofile.md) collection| Read-only. Nullable.|
|hostSecurityProfiles|[hostSecurityProfile](hostsecurityprofile.md) collection| Read-only. Nullable.|
|ipSecurityProfiles|[ipSecurityProfile](ipsecurityprofile.md) collection| Read-only. Nullable.|
|userSecurityProfiles|[userSecurityProfile](usersecurityprofile.md) collection| Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Security resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
