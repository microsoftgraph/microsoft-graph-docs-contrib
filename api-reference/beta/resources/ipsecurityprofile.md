# ipSecurityProfile resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the relevant security properties of an IP address to provide additional context for alerts and targets for actions.

Security profiles are populated by integrated solutions at their discretion. For example:

- A solution will populate **hostSecurityProfile** for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against.
- A provider will populate **ipSecurityProfile** for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring.

## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[Get IP security profile](../api/ipsecurityprofile_get.md) | [ipSecurityProfile](ipsecurityprofile.md) |Read properties and relationships of an ipSecurityProfile object.|
|[Update IP security profile](../api/ipsecurityprofile_update.md) | [ipSecurityProfile](ipsecurityprofile.md) |Update an ipSecurityProfile object. |
|[List IP security profiles](../api/ipsecurityprofile_list.md) |[ipSecurityProfile](ipsecurityprofile.md) collection| Get an ipSecurityProfile object collection.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|address *|String|IP address as a string.|
|asn|Int32|Autonomous system number (ASN) associated with IP address.|
|azureSubscriptionId|String|Azure subscription ID of the entity, if this entity represents an Azure resource.|
|azureTenantId *|String|Azure Active Directory tenant ID of this resource.|
|city|String|City code of originating city for IP address.|
|countryOrRegionCode|String|Code of originating country or region of IP address.|
|createdDateTime *|DateTimeOffset|Time at which the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|id *|String|Provider-generated GUID/unique identifier. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Time at which the entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|organization|String|Name of organization associated with IP address.|
|riskScore|String|Provider-generated/calculated risk score of the IP Address.|
|state|String|State code of originating state for IP address.|
|tags|String collection|User-definable labels that can be applied to an IpSecurityProfile and can serve as filter conditions (for example, HVA, SAW, and so on.) (Supports [update](../api/ipsecurityprofile_update.md)).|
|vendorInformation *|[SecurityVendorInformation](securityvendorinformation.md)|Complex type that contains details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=Windows Defender ATP; subProvider=AppLocker).|
(\* Indicates a mandatory field.)

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.ipSecurityProfile"
}-->

```json
{
  "address": "String",
  "asn": 1024,
  "azureSubscriptionId": "String",
  "azureTenantId": "String",
  "city": "String",
  "countryOrRegionCode": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "organization": "String",
  "riskScore": "String",
  "state": "String",
  "tags": ["String"],
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ipSecurityProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
