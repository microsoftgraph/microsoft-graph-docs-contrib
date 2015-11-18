# organization resource type

Represents an Azure Active Directory tenant. Only the read and update operations are supported on tenants; create and delete are not supported. Inherits from [directoryObject].


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organization"
}-->

```json
{
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "businessPhones": ["string"],
  "city": "string",
  "country": "string",
  "countryLetterCode": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "marketingNotificationEmails": ["string"],
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": true,
  "postalCode": "string",
  "preferredLanguage": "string",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "securityComplianceNotificationMails": ["string"],
  "securityComplianceNotificationPhones": ["string"],
  "state": "string",
  "street": "string",
  "technicalNotificationMails": ["string"],
  "verifiedDomains": [{"@odata.type": "microsoft.graph.verifiedDomain"}]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedPlans|[AssignedPlan](assignedplan.md) collection|The collection of service plans associated with the tenant.                            **Notes**: not nullable.            |
|city|String|            |
|companyLastDirSyncTime|DateTimeOffset|The time and date at which the tenant was last synced with the on-premise directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|country|String|            |
|countryLetterCode|String|            |
|deletionTimestamp|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|dirSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).|
|displayName|String|The display name for the tenant.|
|marketingNotificationEmails|String collection|                                        **Notes**: not nullable.            |
|objectId|String|The unique identifier for the tenant. Inherited from [directoryObject].                            **Notes**: **key**, immutable, not nullable, unique.             Read-only.|
|objectType|String|A string that identifies the object type. For tenants the value is always “Company”. Inherited from [directoryObject].|
|postalCode|String|            |
|preferredLanguage|String|            |
|provisionedPlans|[ProvisionedPlan](provisionedplan.md) collection|                                        **Notes**: not nullable.            |
|provisioningErrors|[ProvisioningError](provisioningerror.md) collection|                                        **Notes**: not nullable.            |
|securityComplianceNotificationMails|String collection||
|securityComplianceNotificationPhones|String collection||
|state|String|            |
|street|String|            |
|technicalNotificationMails|String collection|                                        **Notes**: not nullable.            |
|telephoneNumber|String|            |
|verifiedDomains|[VerifiedDomain](verifieddomain.md) collection|The collection of domains associated with this tenant.                            **Notes**: not nullable.            |

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get organization](../api/organization_get.md) | [organization](organization.md) |Read properties and relationships of organization object.|
|[Update](../api/organization_update.md) | [organization](organization.md)	|Update organization object. |
|[Delete](../api/organization_delete.md) | None |Delete organization object. |
|[checkMemberGroups](../api/organization_checkmembergroups.md)|String collection||
|[getMemberGroups](../api/organization_getmembergroups.md)|String collection||
|[getMemberObjects](../api/organization_getmemberobjects.md)|String collection||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->