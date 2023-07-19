---
title: "serviceLevelAgreementAttainment resource type"
description: "Describes the Azure AD SLA attainment for a tenant for the identified calendar month."
author: "sarbar"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# serviceLevelAgreementAttainment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the Azure AD SLA attainment for a tenant for the identified calendar month.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDate|DateTime|The end date for the calendar month for which SLA attainment is measured.|
|score|Double|The level of SLA attainment achieved by the tenant for the calendar month identified, as described in [Azure Active Directory SLA performance](/azure/active-directory/reports-monitoring/reference-azure-ad-sla-performance). Values are truncated, not rounded, so the actual value is always equal to or higher than the displayed value. Values are expressed as a percentage of availability for the tenant.|
|startDate|DateTime|The start date for the calendar month for which SLA attainment is measured.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceLevelAgreementAttainment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceLevelAgreementAttainment",
  "startDate": "DateTime",
  "endDate": "DateTime",
  "score": "Double"
}
```
