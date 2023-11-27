---
title: "attributeSet resource type"
description: "Attributes in the exported data"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attributeSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The billed or unbilled usage API response with the "full" or "basic" request parameter returns the following attributes:

|attribute|full|basic|
|:---|:---|:---|
|PartnerId|yes|yes|
|PartnerName|yes|yes|
|CustomerId|yes|yes|
|CustomerName|yes|yes|
|CustomerDomainName|yes|no|
|CustomerCountry|yes|no|
|MpnId|yes|no|
|Tier2MpnId|yes|no|
|InvoiceNumber|yes|yes|
|ProductId|yes|yes|
|SkuId|yes|yes|
|AvailabilityId|yes|no|
|SkuName|yes|yes|
|ProductName|yes|no|
|PublisherName|yes|yes|
|PublisherId|yes|no|
|SubscriptionDescription|yes|no|
|SubscriptionId|yes|yes|
|ChargeStartDate|yes|yes|
|ChargeEndDate|yes|yes|
|UsageDate|yes|yes|
|MeterType|yes|no|
|MeterCategory|yes|no|
|MeterId|yes|no|
|MeterSubCategory|yes|no|
|MeterName|yes|no|
|MeterRegion|yes|no|
|Unit|yes|no|
|ResourceLocation|yes|no|
|ConsumedService|yes|no|
|ResourceGroup|yes|no|
|ResourceURI|yes|yes|
|ChargeType|yes|yes|
|UnitPrice|yes|yes|
|Quantity|yes|yes|
|UnitType|yes|yes|
|BillingPreTaxTotal|yes|yes|
|BillingCurrency|yes|yes|
|PricingPreTaxTotal|yes|yes|
|PricingCurrency|yes|yes|
|ServiceInfo1|yes|no|
|ServiceInfo2|yes|no|
|Tags|yes|no|
|AdditionalInfo|yes|yes|
|EffectiveUnitPrice|yes|yes|
|PCToBCExchangeRate|yes|yes|
|EntitlementId|yes|yes|
|EntitlementDescription|yes|no|
|PartnerEarnedCreditPercentage|yes|no|
|CreditPercentage|yes|yes|
|CreditType|yes|yes|
|BenefitOrderID|yes|yes|
|BenefitID|yes|no|
|BenefitType|yes|yes|









Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attributeSets](../api/directory-list-attributesets.md)|[attributeSet](../resources/attributeset.md) collection|Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.|
|[Create attributeSet](../api/directory-post-attributesets.md)|[attributeSet](../resources/attributeset.md)|Create a new [attributeSet](../resources/attributeset.md) object.|
|[Get attributeSet](../api/attributeset-get.md)|[attributeSet](../resources/attributeset.md)|Read the properties and relationships of an [attributeSet](../resources/attributeset.md) object.|
|[Update attributeSet](../api/attributeset-update.md)|[attributeSet](../resources/attributeset.md)|Update the properties of an [attributeSet](../resources/attributeset.md) object.|
|[Delete attributeSet](../api/directory-delete-attributesets.md)|None|Delete an [attributeSet](../resources/attributeset.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|maxAttributesPerSet|Int32|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attributeSet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeSet",
  "id": "String (identifier)",
  "description": "String",
  "maxAttributesPerSet": "Integer"
}
```

