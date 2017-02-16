# domain resource type

Represents a domain associated with the tenant.

Use domain operations to associate domains to a tenant and get records to verify domain ownership.  Domain operations enable registrars to automate domain association for services such as Office 365. For example, as part of domain sign up, a registrar can enable a vanity domain for email, websites, authentication, etc.   

To associate a domain with a tenant:
1. [Associate](../api/domain_post_domains.md) a domain with a tenant. 
2. [Verify](../api/domain_list_verificationdnsrecords.md) ownership of the domain.
3. |[Indicate](../api/domain_update.md) the supported services you plan to use with the domain.
4. [Configure](../api/domain_list_serviceconfigurationrecords.md) the domain for supported services.

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domain](../api/domain_get.md) | [domain](domain.md) | Read properties and relationships of a domain object.|
|[Create domain](../api/domain_post_domains.md) | [domain](domain.md) | Adds a domain to the tenant. |
|[Create domainNameReference](../api/domain_post_domainnamereferences.md) |[directoryObject](directoryobject.md)| Create a new domainNameReference by posting to the domainNameReferences collection.|
|[List domainNameReferences](../api/domain_list_domainnamereferences.md) |[directoryObject](directoryobject.md) collection| Get a domainNameReference object collection.|
|[Create domainDnsRecord](../api/domain_post_serviceconfigurationrecords.md) |[domainDnsRecord](domaindnsrecord.md)| Create a new domainDnsRecord by posting to the serviceConfigurationRecords collection.|
|[List serviceConfigurationRecords](../api/domain_list_serviceconfigurationrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection| Get a domainDnsRecord object collection.|
|[Create domainDnsRecord](../api/domain_post_verificationdnsrecords.md) |[domainDnsRecord](domaindnsrecord.md)| Create a new domainDnsRecord by posting to the verificationDnsRecords collection.|
|[List verificationDnsRecords](../api/domain_list_verificationdnsrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection| Get a domainDnsRecord object collection.|
|[Update domain](../api/domain_update.md) | [domain](domain.md)	|Update domain object. |
|[Delete domain](../api/domain_delete.md) | None |Delete domain object. |
|[ForceDelete domain](../api/domain_forcedelete.md)|None|Deletes a domain using an asynchronous operation.|
|[Verify domain](../api/domain_verify.md)|[domain](domain.md)|Validates the ownership of the domain.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|authenticationType|String| Indicates what authentication type the domain is configured for. The value is either *Managed* or *Federated*. Not nullable |
|availabilityStatus|String| This property is always null except when the [verify](../api/domain_verify.md) action is used. When the [verify](../api/domain_verify.md) action is used, a **domain** entity is returned in the response. The **availabilityStatus** property of the **domain** entity in the response is either *AvailableImmediately* or *EmailVerifiedDomainTakeoverScheduled*.|
|forceDeleteState|[forceDeleteState](forcedeletestate.md)| Status of the forceDelete action. |
|id|String| The fully qualified name of the domain. **Notes:** Read-only, key, immutable, not nullable, unique |
|isAdminManaged|Boolean| The value of the property is false if the DNS record management of the domain has been delegated to Office 365. Otherwise, the value is true. Not nullable |
|isDefault|Boolean| True if this is the default domain that is used for user creation. There is only one default domain per company. Not nullable |
|isInitial|Boolean| True if this is the initial domain created by Microsoft Online Services (companyname.onmicrosoft.com). There is only one initial domain per company. Not nullable |
|isRoot|Boolean| For subdomains, this represents the root domain. Only root domains need to be verified, and all subdomains will be automatically verified. Not nullable |
|isVerified|Boolean| True if the domain has completed domain ownership verification. Not nullable |
|supportedServices|String collection| The capabilities assigned to the domain.</br></br>Can include 0, 1 or more of following values: *Email*, *Sharepoint*, *EmailInternalRelayOnly*, *OfficeCommunicationsOnline*, *SharePointDefaultDomain*,	*FullRedelegation*,	*SharePointPublic*,	*OrgIdAuthentication*,	*Yammer*,	*Intune*</br>Most of these values are read-only.</br></br> The values which you can add/remove using Graph API include: *Email*,	*OfficeCommunicationsOnline*,	*Yammer*</br>Not nullable|

### Relationships

Relationships between a domain and other objects in the directory such as its verification records and service configuration records are exposed through navigation properties. You can read these relationships by targeting these navigation properties in your requests. 

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|domainNameReferences|[directoryObject](directoryobject.md) collection| Read-only. Nullable.|
|serviceConfigurationRecords|[domainDnsRecord](domaindnsrecord.md) collection| DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services.</br>Read-only. Nullable.|
|verificationDnsRecords|[domainDnsRecord](domaindnsrecord.md) collection| DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Azure AD.</br>Read-only. Nullable.|

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