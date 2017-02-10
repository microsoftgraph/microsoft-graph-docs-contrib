# domain resource type

Represents a domain associated with the tenant.

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domain](../api/domain_get.md) | [domain](domain.md) |Read properties and relationships of domain object.|
|[Create domainNameReference](../api/domain_post_domainnamereferences.md) |[directoryObject](directoryobject.md)| Create a new domainNameReference by posting to the domainNameReferences collection.|
|[List domainnamereferences](../api/domain_list_domainnamereferences.md) |[directoryObject](directoryobject.md) collection| Get a domainNameReference object collection.|
|[Create domainDnsRecord](../api/domain_post_serviceconfigurationrecords.md) |[domainDnsRecord](domaindnsrecord.md)| Create a new domainDnsRecord by posting to the serviceConfigurationRecords collection.|
|[List serviceconfigurationrecords](../api/domain_list_serviceconfigurationrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection| Get a domainDnsRecord object collection.|
|[Create domainDnsRecord](../api/domain_post_verificationdnsrecords.md) |[domainDnsRecord](domaindnsrecord.md)| Create a new domainDnsRecord by posting to the verificationDnsRecords collection.|
|[List verificationdnsrecords](../api/domain_list_verificationdnsrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection| Get a domainDnsRecord object collection.|
|[Update](../api/domain_update.md) | [domain](domain.md)	|Update domain object. |
|[Delete](../api/domain_delete.md) | None |Delete domain object. |
|[Forcedelete](../api/domain_forcedelete.md)|None|Deletes a domain using an asynchronous operation.|
|[Verify](../api/domain_verify.md)|[domain](domain.md)|Validates the ownership of the domain.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|authenticationType|String| Indicates what authentication type the domain is configured for. The value is either *Managed* or *Federated*. |
|availabilityStatus|String| This property is always null except when the [verify](../api/domain_verify.md) action is used. When the [verify](../api/domain_verify.md) action is used, a **domain** entity is returned in the response. The **availabilityStatus** property of the **domain** entity in the response is either *AvailableImmediately* or *EmailVerifiedDomainTakeoverScheduled*.|
|forceDeleteState|[forceDeleteState](forcedeletestate.md)| Status of the forceDelete action. |
|id|String| The fully qualified name of the domain. **Notes:** Read-only, key, immutable, not nullable, unique |
|isAdminManaged|Boolean| The value of the property is false if the DNS record management of the domain has been delegated to Office 365. Otherwise, the value is true. Not nullable |
|isDefault|Boolean| True if this is the default domain that is used for user creation. There is only one default domain per company. Not nullable |
|isInitial|Boolean| True if this is the initial domain created by Microsoft Online Services (companyname.onmicrosoft.com). There is only one initial domain per company. Not nullable |
|isRoot|Boolean| For subdomains, this represents the root domain. Only root domains need to be verified, and all subdomains will be automatically verified. Not nullable |
|isVerified|Boolean||
|supportedServices|String collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|domainNameReferences|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|serviceConfigurationRecords|[domainDnsRecord](domaindnsrecord.md) collection| Read-only. Nullable.|
|verificationDnsRecords|[domainDnsRecord](domaindnsrecord.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domain"
}-->

```json
{
  "authenticationType": "String",
  "availabilityStatus": "String",
  "forceDeleteState": {"@odata.type": "microsoft.graph.forceDeleteState"},
  "id": "String (identifier)",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true,
  "isVerified": true,
  "supportedServices": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domain resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->