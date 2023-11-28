---
title: "attributeSet enum type"
description: "Attributes that should be exported"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: enumPageTypes
---

# attributeSet enum type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Possible values for attributeSet type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|full|1|all attributes in exported data|
|basic|2|only basic attributes in exported data|
|unknownFutureValue|3|reserved for future use|


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

<!-- {
  "type": "#page.annotation",
  "description": "attributeSet enum type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "namespace":"microsoft.graph.partners.billing"
}-->
