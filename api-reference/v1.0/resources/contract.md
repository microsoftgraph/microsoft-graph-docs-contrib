---
title: "Contract resource type"
description: "Represents an existing partnership that the partner tenant has with a customer tenant."
ms.localizationpriority: medium
author: "adimitui"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# Contract resource type

Namespace: microsoft.graph
Represents an existing partnership that the partner tenant has with a customer tenant.

> **Important:**
> Exists in partner tenants only. Partner tenants are Microsoft Entra tenants that belong to Microsoft partners who are either part of [Microsoft Cloud Solution Provider](https://partnercenter.microsoft.com/en-us/partner/programs), Office 365 Syndication, or Microsoft Advisor partner programs.

## Methods

| Method   | Return Type | Description |
|:---------------|:--------|:----------|
|[Get](../api/contract-get.md) | Contract |Read properties of a specific contract object. |
|[List](../api/contract-list.md) | Contract collection | List of contracts in the partner tenant. |

## Properties
| Property   | Type | Description |
|:---------------|:--------|:----------|
|contractType|String|Type of contract. Possible values are:  `SyndicationPartner`, `BreadthPartner`, `ResellerPartner`. See more in the [table below](#contracttype-values).|
|customerId|Guid|The unique identifier for the customer tenant referenced by this partnership. Corresponds to the id property of the customer tenant's organization resource. |
|defaultDomainName|String|A copy of the customer tenant's default domain name. The copy is made when the partnership with the customer is established. It isn't automatically updated if the customer tenant's default domain name changes.|
|displayName|String|A copy of the customer tenant's display name. The copy is made when the partnership with the customer is established. It is not automatically updated if the customer tenant's display name changes.|
|id|String| The unique identifier for the partnership. Key, read-only |

### contractType values

|Member|Description|
|:---|:---|
|SyndicationPartner|Partner that *exclusively* resells and manages O365 and Intune for this customer. They resell and support their customers.|
|BreadthPartner|Partner has the ability to provide administrative support for this customer. However, the partner isn't allowed to resell to the customer.|
|ResellerPartner|Partner that is similar to a syndication partner, except that the partner doesn't have exclusive access to a tenant. In the syndication case, the customer can't buy additional direct subscriptions from Microsoft or from other partners.|

## Relationships
None


## JSON representation
The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.contract"
}-->

```json
{
  "contractType": "String",
  "customerId": "Guid",
  "defaultDomainName": "String",
  "displayName": "String",
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Contract resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
