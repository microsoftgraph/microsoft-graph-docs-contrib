# userSecurityProfile resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the relevant security properties of users to provide additional context for alerts and targets for actions.

Security profiles are populated by integrated solutions at their discretion. For example:

- A solution will populate **hostSecurityProfile** for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against.
- A provider will populate **ipSecurityProfile** for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring.

## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[Get user security profile](../api/usersecurityprofile_get.md) | [userSecurityProfile](usersecurityprofile.md) |Read properties and relationships of a userSecurityProfile object.|
|[Update user security profile](../api/usersecurityprofile_update.md) | [userSecurityProfile](usersecurityprofile.md)|Update a userSecurityProfile object. |
|[List user security profiles](../api/usersecurityprofile_list.md) |[userSecurityProfile](usersecurityprofile.md) collection| Get a userSecurityProfile object collection.|

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|accountName|String|Account name of user account (without Active Directory domain or DNS domain).|
|azureSubscriptionId|String|Azure subscription ID of the entity, if this entity represents an Azure resource.|
|azureTenantId *|String|Azure Active Directory tenant ID of this resource.|
|createdDateTime *|DateTimeOffset|Time at which the userSecurityProfile was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|domainName|String|NetBIOS/Active Directory domain of user account  (i.e. domain\account format).|
|id *|String|Provider-generated GUID/unique identifier. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Time at which the userSecurityProfile was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|onPremisesSecurityIdentifier|String|Active Directory (on premises) SID of the user.|
|riskScore|String|Provider-calculated risk score of the user account.|
|tags|String collection|User-definable labels that can be applied to an userSecurityProfile and can serve as filter conditions (for example, "HVA", "SAW", and so on) (supports [update](../api/usersecurityprofile_update.md)).|
|userPrincipalName|String|User sign-in name internet format: (user account name)@(user account DNS domain name).|
|vendorInformation *|[securityVendorInformation](securityvendorinformation.md)|Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=Windows Defender ATP; subProvider=AppLocker).|

\* Indicates a mandatory field.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSecurityProfile"
}-->

```json
{
  "accountName": "String",
  "azureSubscriptionId": "String",
  "azureTenantId": "String",
  "createdDateTime": "String (timestamp)",
  "domainName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "String",
  "riskScore": "String",
  "tags": ["String"],
  "userPrincipalName": "String",
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userSecurityProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
