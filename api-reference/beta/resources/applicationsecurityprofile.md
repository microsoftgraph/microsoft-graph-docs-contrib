# applicationSecurityProfile resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the relevant security properties of applications to provide additional context for alerts and targets for actions.

 Security profiles are populated by integrated solutions at their discretion.<br/> For example: - A solution will populate hostSecurityProfile for any desktop, laptop, server, firewall, or other endpoint that their service is responsible for monitoring, alerting, or taking threat remediation actions against. - A Provider will populate ipSecurityProfile for a collected set of IP addresses that their service is responsible for isolating, monitoring, or configuring

## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[Get applicationSecurityProfile](../api/applicationsecurityprofile_get.md) | [applicationSecurityProfile](applicationsecurityprofile.md) |Read properties and relationships of applicationSecurityProfile object.|
|[Update](../api/applicationsecurityprofile_update.md) | [applicationSecurityProfile](applicationsecurityprofile.md) |Update applicationSecurityProfile object. |
|[List applicationSecurityProfiles](../api/applicationsecurityprofile_list.md) | [applicationSecurityProfile](applicationsecurityprofile.md) collection|Get a applicationSecurityProfile object collection. |

## Properties

### ( \* = Mandatory Field )

| Property   | Type |Description|
|:---------------|:--------|:----------|
|azureSubscriptionId|String|Azure subscription ID of the entity, if this entity represents an Azure resource.|
|azureTenantId|String *|Azure Active Directory tenant ID of this resource.|
|certificateThumbprint|String|Code sign certificate thumbprint.|
|createdDateTime|DateTimeOffset *|Time at which the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|deploymentPackageUrl|String|URI to deployment package and/or type of deployment package (e.g. appx, MSI, etc.).|
|id|String *|Provider-generated GUID/unique identifier. Read-only.|
|isSigned|Boolean|True if the application was signed, otherwise false.|
|lastModifiedDateTime|DateTimeOffset|Time at which the entity was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|manifest|String|Application manifest/catalog as a blob.|
|name|String *|Application name.|
|permissionsRequired|string|The level of permissions the application requires to function. Possible values are: `unknown`, `anonymous`, `guest`, `user`, `administrator`, `system`.|
|platform|String|OS Platform of the application (e.g. Android, Windows, iOS, Linux, etc.).|
|publisher|String|Application publisher (ISV name).|
|riskScore|String|Provider-calculated risk score of the application.|
|tags|String collection|User-definable labels that can be applied to an alert and can serve as filter conditions (e.g. "HVA", "SAW", etc.) ([Supports Update](../api/applicationsecurityprofile_update.md)).|
|type|String|Application Type (e.g. single user, cloud app, multi-tenant, etc.).|
|vendorInformation|[securityVendorInformation](securityvendorinformation.md)*|Complex Type containing details about the security product/service vendor, provider, and sub-provider (e.g. vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).|

## Relationships

None

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSecurityProfile"
}-->

```json
{
  "azureSubscriptionId": "String",
  "azureTenantId": "String",
  "certificateThumbprint": "String",
  "createdDateTime": "String (timestamp)",
  "deploymentPackageUrl": "String",
  "id": "String (identifier)",
  "isSigned": true,
  "lastModifiedDateTime": "String (timestamp)",
  "manifest": "String",
  "name": "String",
  "permissionsRequired": "string",
  "platform": "String",
  "publisher": "String",
  "riskScore": "String",
  "tags": ["String"],
  "type": "String",
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSecurityProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->