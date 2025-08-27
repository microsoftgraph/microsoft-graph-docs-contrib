---
title: "attributeSet enum type"
description: "Represents attributes for exported data sets in the Microsoft Graph partner billing API."
author: "sourishdeb"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: enumPageTypes
ms.date: 06/11/2024
---

# attributeSet enum type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents attributes for exported data sets in the Microsoft Graph partner billing API. The default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes.

## Members

| Member             | Description                                      |
|:-------------------|:-------------------------------------------------|
| full               | All attributes in the exported data.             |
| basic              | Only basic attributes in the exported data.      |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### Attributes

The [billedUsage: export](../api/partners-billing-billedusage-export.md) or [unbilledUsage: export](../api/partners-billing-unbilledusage-export.md) API response with the `full` or `basic` request parameter returns the following attributes.

| Attribute                     | Full | Basic |
|:------------------------------|:-----|:------|
| AdditionalInfo                | Yes  | Yes   |
| AvailabilityId                | Yes  | No    |
| BenefitID                     | Yes  | No    |
| BenefitOrderID                | Yes  | Yes   |
| BenefitType                   | Yes  | Yes   |
| BillingCurrency               | Yes  | Yes   |
| BillingPreTaxTotal            | Yes  | Yes   |
| ChargeEndDate                 | Yes  | Yes   |
| ChargeStartDate               | Yes  | Yes   |
| ChargeType                    | Yes  | Yes   |
| ConsumedService               | Yes  | No    |
| CreditPercentage              | Yes  | Yes   |
| CreditType                    | Yes  | Yes   |
| CustomerCountry               | Yes  | No    |
| CustomerDomainName            | Yes  | No    |
| CustomerId                    | Yes  | Yes   |
| CustomerName                  | Yes  | Yes   |
| EffectiveUnitPrice            | Yes  | Yes   |
| EntitlementDescription        | Yes  | No    |
| EntitlementId                 | Yes  | Yes   |
| InvoiceNumber                 | Yes  | Yes   |
| MeterCategory                 | Yes  | No    |
| MeterId                       | Yes  | No    |
| MeterName                     | Yes  | No    |
| MeterRegion                   | Yes  | No    |
| MeterSubCategory              | Yes  | No    |
| MeterType                     | Yes  | No    |
| MpnId                         | Yes  | No    |
| PartnerEarnedCreditPercentage | Yes  | No    |
| PartnerId                     | Yes  | Yes   |
| PartnerName                   | Yes  | Yes   |
| PCToBCExchangeRate            | Yes  | Yes   |
| PricingCurrency               | Yes  | Yes   |
| PricingPreTaxTotal            | Yes  | Yes   |
| ProductId                     | Yes  | Yes   |
| ProductName                   | Yes  | No    |
| PublisherId                   | Yes  | No    |
| PublisherName                 | Yes  | Yes   |
| Quantity                      | Yes  | Yes   |
| ResourceGroup                 | Yes  | No    |
| ResourceLocation              | Yes  | No    |
| ResourceURI                   | Yes  | Yes   |
| ServiceInfo1                  | Yes  | No    |
| ServiceInfo2                  | Yes  | No    |
| SkuId                         | Yes  | Yes   |
| SkuName                       | Yes  | Yes   |
| SubscriptionDescription       | Yes  | No    |
| SubscriptionId                | Yes  | Yes   |
| Tags                          | Yes  | No    |
| Tier2MpnId                    | Yes  | No    |
| Unit                          | Yes  | No    |
| UnitPrice                     | Yes  | Yes   |
| UnitType                      | Yes  | Yes   |
| UsageDate                     | Yes  | Yes   |

The [billedReconciliation: export](../api/partners-billing-billedreconciliation-export.md) or [unbilledReconciliation: export](../api/partners-billing-unbilledreconciliation-export.md) API response with the `full` or `basic` request parameter returns the following attributes.

| Attribute                     | Full | Basic |
|:------------------------------|:-----|:------|
|PartnerId                      | Yes  | Yes   |
|CustomerId                     | Yes  | Yes   |
|CustomerName                   | Yes  | Yes   |
|CustomerDomainName             | Yes  | No    |
|CustomerCountry                | Yes  | No    |
|InvoiceNumber                  | Yes  | Yes   |
|MpnId                          | Yes  | No    |
|Tier2MpnId                     | Yes  | Yes   |
|OrderId                        | Yes  | Yes   |
|OrderDate                      | Yes  | Yes   |
|ProductId                      | Yes  | Yes   |
|SkuId                          | Yes  | Yes   |
|AvailabilityId                 | Yes  | Yes   |
|SkuName                        | Yes  | Yes   |
|ProductName                    | Yes  | Yes   |
|ChargeType                     | Yes  | Yes   |
|UnitPrice                      | Yes  | Yes   |
|Quantity                       | Yes  | No    |
|Subtotal                       | Yes  | Yes   |
|TaxTotal                       | Yes  | Yes   |
|Total                          | Yes  | Yes   |
|Currency                       | Yes  | Yes   |
|PriceAdjustmentDescription     | Yes  | Yes   |
|PublisherName                  | Yes  | Yes   |
|PublisherId                    | Yes  | No    |
|SubscriptionDescription        | Yes  | No    |
|SubscriptionId                 | Yes  | Yes   |
|ChargeStartDate                | Yes  | Yes   |
|ChargeEndDate                  | Yes  | Yes   |
|TermAndBillingCycle            | Yes  | Yes   |
|EffectiveUnitPrice             | Yes  | Yes   |
|UnitType                       | Yes  | No    |
|AlternateId                    | Yes  | No    |
|BillableQuantity               | Yes  | Yes   |
|BillingFrequency               | Yes  | No    |
|PricingCurrency                | Yes  | Yes   |
|PCToBCExchangeRate             | Yes  | Yes   |
|PCToBCExchangeRateDate         | Yes  | No    |
|MeterDescription               | Yes  | No    |
|ReservationOrderId             | Yes  | Yes   |
|CreditReasonCode               | Yes  | Yes   |
|SubscriptionStartDate          | Yes  | Yes   |
|SubscriptionEndDate            | Yes  | Yes   |
|ReferenceId                    | Yes  | Yes   |
|ProductQualifiers              | Yes  | No    |
|PromotionId                    | Yes  | Yes   |
|ProductCategory                | Yes  | Yes   |

<!-- {
  "type": "#page.annotation",
  "description": "attributeSet enum type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "namespace":"microsoft.graph.partners.billing"
}-->
