---
title: "attributeSet enum type"
description: "Represents attributes for exported data sets in the Microsoft Graph partners billing API."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: enumPageTypes
---

# attributeSet enum type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents attributes for exported data sets in the Microsoft Graph partner billing API. The default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes.

## Members

| Member             | Value | Description                                      |
|:-------------------|:------|:-------------------------------------------------|
| full               | 1     | All attributes in the exported data.             |
| basic              | 2     | Only basic attributes in the exported data.      |
| unknownFutureValue | 3     | Evolvable enumeration sentinel value. Don't use. |

### Attributes

The [billedUsage: export](../api/partners-billing-billedusage-export.md) or [unbilledUsage: export](../api/partners-billing-unbilledusage-export.md) API response with the `full` or `basic` request parameter returns the following attributes.

| Attribute                     | Full | Basic |
|:------------------------------|:-----|:------|
| PartnerId                     | Yes  | Yes   |
| PartnerName                   | Yes  | Yes   |
| CustomerId                    | Yes  | Yes   |
| CustomerName                  | Yes  | Yes   |
| CustomerDomainName            | Yes  | No    |
| CustomerCountry               | Yes  | No    |
| MpnId                         | Yes  | No    |
| Tier2MpnId                    | Yes  | No    |
| InvoiceNumber                 | Yes  | Yes   |
| ProductId                     | Yes  | Yes   |
| SkuId                         | Yes  | Yes   |
| AvailabilityId                | Yes  | No    |
| SkuName                       | Yes  | Yes   |
| ProductName                   | Yes  | No    |
| PublisherName                 | Yes  | Yes   |
| PublisherId                   | Yes  | No    |
| SubscriptionDescription       | Yes  | No    |
| SubscriptionId                | Yes  | Yes   |
| ChargeStartDate               | Yes  | Yes   |
| ChargeEndDate                 | Yes  | Yes   |
| UsageDate                     | Yes  | Yes   |
| MeterType                     | Yes  | No    |
| MeterCategory                 | Yes  | No    |
| MeterId                       | Yes  | No    |
| MeterSubCategory              | Yes  | No    |
| MeterName                     | Yes  | No    |
| MeterRegion                   | Yes  | No    |
| Unit                          | Yes  | No    |
| ResourceLocation              | Yes  | No    |
| ConsumedService               | Yes  | No    |
| ResourceGroup                 | Yes  | No    |
| ResourceURI                   | Yes  | Yes   |
| ChargeType                    | Yes  | Yes   |
| UnitPrice                     | Yes  | Yes   |
| Quantity                      | Yes  | Yes   |
| UnitType                      | Yes  | Yes   |
| BillingPreTaxTotal            | Yes  | Yes   |
| BillingCurrency               | Yes  | Yes   |
| PricingPreTaxTotal            | Yes  | Yes   |
| PricingCurrency               | Yes  | Yes   |
| ServiceInfo1                  | Yes  | No    |
| ServiceInfo2                  | Yes  | No    |
| Tags                          | Yes  | No    |
| AdditionalInfo                | Yes  | Yes   |
| EffectiveUnitPrice            | Yes  | Yes   |
| PCToBCExchangeRate            | Yes  | Yes   |
| EntitlementId                 | Yes  | Yes   |
| EntitlementDescription        | Yes  | No    |
| PartnerEarnedCreditPercentage | Yes  | No    |
| CreditPercentage              | Yes  | Yes   |
| CreditType                    | Yes  | Yes   |
| BenefitOrderID                | Yes  | Yes   |
| BenefitID                     | Yes  | No    |
| BenefitType                   | Yes  | Yes   |

<!-- {
  "type": "#page.annotation",
  "description": "attributeSet enum type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "namespace":"microsoft.graph.partners.billing"
}-->
