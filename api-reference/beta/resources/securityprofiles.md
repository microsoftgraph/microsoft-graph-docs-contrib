# Security Profiles resource type

Security Profiles represent security properties and an inventory of related entities (hosts, users, IPs, etc) to provide additional context for Alerts and targets for Actions. Security Profiles are populated by integrated solutions at their discretion.

For example: - A solution will populate hostSecurityProfile for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against. - A Provider will populate ipSecurityProfile for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring

## Methods

None

## Properties

None

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|applicationSecurityProfiles|[ApplicationSecurityProfile](applicationsecurityprofile.md) collection| Read-only. Nullable.|
|fileSecurityProfiles|[FileSecurityProfile](filesecurityprofile.md) collection| Read-only. Nullable.|
|hostSecurityProfiles|[HostSecurityProfile](hostsecurityprofile.md) collection| Read-only. Nullable.|
|ipSecurityProfiles|[IpSecurityProfile](ipsecurityprofile.md) collection| Read-only. Nullable.|
|userSecurityProfiles|[UserSecurityProfile](usersecurityprofile.md) collection| Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Security resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->