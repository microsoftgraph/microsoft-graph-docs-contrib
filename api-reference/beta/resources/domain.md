---
title: "domain resource type"
description: "Represents a domain associated with the tenant."
author: "tafra00"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 11/01/2024
---

# domain resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a domain associated with the tenant.

Use domain operations to associate domains to a tenant, verify domain ownership, and configure supported services. Use domain operations to associate domains to a tenant, verify domain ownership, and configure supported services. Verifying a domain through Microsoft Graph doesn't configure the domain for use with Office 365 services like Exchange. Fully configuring the domain to work with Microsoft 365 products might require extra steps. For more information, see [Microsoft 365 admin setup](/microsoft-365/admin/setup/add-domain).

To associate a domain with a tenant:

1. [Associate](../api/domain-post-domains.md) a domain with a tenant.

2. [Retrieve](../api/domain-list-verificationdnsrecords.md) the domain verification records. Add the verification record details to the domain's zone file using the domain registrar or Domain Name System (DNS) server configuration.

3. [Verify](../api/domain-verify.md) the ownership of the domain, including executing external admin takeover. This operation sets the **isVerified** property to `true`.

4. [Indicate](../api/domain-update.md) the supported services you plan to use with the domain.

5. [Configure](../api/domain-list-serviceconfigurationrecords.md) supported services by retrieving a list of records needed to enable services for the domain. Add the configuration record details to the domain's zone file using the domain registrar or DNS server configuration.

## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[List](../api/domain-list.md) | [domain](domain.md) | Retrieve all domains linked to the tenant. |
|[Create](../api/domain-post-domains.md) | [domain](domain.md) | Add a domain to the tenant. |
|[Get](../api/domain-get.md) | [domain](domain.md) | Read properties and relationships of a domain object.|
|[Update](../api/domain-update.md) | [domain](domain.md) |Update a domain.|
|[Delete](../api/domain-delete.md) | None |Delete a domain.|
|[Force delete](../api/domain-forcedelete.md)|None|Delete a domain by using an asynchronous operation.|
|[Verify](../api/domain-verify.md)|[domain](domain.md)|Validate the ownership of the domain.|
|[Promote](../api/domain-promote.md)|Boolean|Promote a verified subdomain to the root domain.|
|[Get root domain](../api/domain-list-rootdomain.md) |  Get the root domain of a subdomain. |
|[List domain name references](../api/domain-list-domainnamereferences.md) |[directoryObject](directoryobject.md) collection| Retrieve a list of directory objects with a reference to the domain.|
|[List service configuration records](../api/domain-list-serviceconfigurationrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection|  Retrieve a list of domain DNS records for domain configuration.|
|[List verification DNS records](../api/domain-list-verificationdnsrecords.md) |[domainDnsRecord](domaindnsrecord.md) collection|  Retrieve a list of domain DNS records for domain verification.|

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
|authenticationType|String| Indicates the configured authentication type for the domain. The value is either `Managed` or `Federated`. `Managed` indicates a cloud managed domain where Microsoft Entra ID performs user authentication. `Federated` indicates authentication is federated with an identity provider such as the tenant's on-premises Active Directory via Active Directory Federation Services. Not nullable.  <br/><br/>To update this property in delegated scenarios, the calling app must be assigned the *Domain-InternalFederation.ReadWrite.All* permission. |
|availabilityStatus|String| This property is always `null` except when the [verify](../api/domain-verify.md) action is used. When the [verify](../api/domain-verify.md) action is used, a **domain** entity is returned in the response. The **availabilityStatus** property of the **domain** entity in the response is either `AvailableImmediately` or `EmailVerifiedDomainTakeoverScheduled`.|
|id|String| The fully qualified name of the domain. Key, immutable, not nullable, unique. |
|isAdminManaged|Boolean| The value of the property is `false` if the DNS record management of the domain is delegated to Microsoft 365. Otherwise, the value is `true`. Not nullable. |
|isDefault|Boolean| `true` for the default domain that is used for user creation. There's only one default domain per company. Not nullable. |
|isInitial|Boolean| `true` for the initial domain created by Microsoft Online Services. For example, `contoso.onmicrosoft.com`. There's only one initial domain per company. Not nullable. |
|isRoot|Boolean| `true` if the domain is a verified root domain. Otherwise, `false` if the domain is a subdomain or unverified. Not nullable. |
|isVerified|Boolean| `true` for verified domains. Not nullable. |
|passwordNotificationWindowInDays|Int32|Specifies the number of days before a user receives a password expiry notification. 14 days by default.|
|passwordValidityPeriodInDays|Int32| Specifies the length of time that a password is valid before it must be changed. 90 days by default. |
|supportedServices|String collection| The capabilities assigned to the domain. Can include `0`, `1`, or more of following values: `Email`, `Sharepoint`, `EmailInternalRelayOnly`, `OfficeCommunicationsOnline`,`SharePointDefaultDomain`, `FullRedelegation`, `SharePointPublic`, `OrgIdAuthentication`, `Yammer`, `Intune`, `CustomUrlDomain`. The values that you can add or remove using the API include: `Email`, `OfficeCommunicationsOnline`, `Yammer`, and `CustomUrlDomain`. Not nullable. <br/><br/> For more information about `CustomUrlDomain`, see [Custom URL domains in external tenants](/entra/external-id/customers/concept-custom-url-domain).|
|state|[domainState](domainstate.md)| Status of asynchronous operations scheduled for the domain. |

## Relationships

Relationships between a domain and other objects in the directory such as its verification records and service configuration records are exposed through navigation properties. You can read these relationships by targeting these navigation properties in your requests.

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|domainNameReferences|[directoryObject](directoryobject.md) collection| The objects such as users and groups that reference the domain ID. Read-only, Nullable. Does not support `$expand`. Supports `$filter` by the OData type of objects returned. For example, `/domains/{domainId}/domainNameReferences/microsoft.graph.user` and `/domains/{domainId}/domainNameReferences/microsoft.graph.group`.|
|serviceConfigurationRecords|[domainDnsRecord](domaindnsrecord.md) collection| DNS records the customer adds to the DNS zone file of the domain before the domain can be used by Microsoft Online services. Read-only, Nullable. Does not support `$expand`. |
|verificationDnsRecords|[domainDnsRecord](domaindnsrecord.md) collection| DNS records that the customer adds to the DNS zone file of the domain before the customer can complete domain ownership verification with Microsoft Entra ID. Read-only, Nullable. Does not support `$expand`.|
|federationConfiguration|[internalDomainFederation](../resources/internaldomainfederation.md)| Domain settings configured by customer when federated with Microsoft Entra ID. Does not support `$expand`.|
|rootDomain|[domain](domain.md)| Root domain of a subdomain. Read-only, Nullable. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domain"
}-->

```json
{
  "authenticationType": "String",
  "availabilityStatus": "String",
  "id": "String (identifier)",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true,
  "isVerified": true,
  "passwordNotificationWindowInDays": 14,
  "passwordValidityPeriodInDays": 90,
  "state": {"@odata.type": "microsoft.graph.domainState"},
  "supportedServices": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "domain resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
