---
title: "attributeSet enum type"
description: "Represents attributes for exported data sets in the Microsoft Graph partner billing API."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: enumPageTypes
---

# attributeSet enum type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

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

<!-- {
  "type": "#page.annotation",
  "description": "attributeSet enum type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "namespace":"microsoft.graph.partners.billing"
}-->
