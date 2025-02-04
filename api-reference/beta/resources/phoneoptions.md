---
title: "phoneOptions resource type"
description: "Defines the calling codes to opt in and opt out for telephony services in external identities user flow for Microsoft Entra workforce or external tenants."
author: "aloom3"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
ms.date: 02/05/2025
doc_type: resourcePageType
---

# phoneOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the calling codes to opt in and opt out for telephony services in [external identities user flow for Microsoft Entra workforce or external tenants](../resources/authenticationeventsflow.md). These codes are displayed on the user flow start-up step up for the customer to select from.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultRegions|Int16 collection|A read-only, Microsoft-defined list of regions that already enable MFA. For more information, see the following [list of countries](/entra/external-id/customers/how-to-region-code-opt in).|
|excludeRegions|Int16 collection|A numbers-only set representing the region telecom codes to prevent or disable the telephony service. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be non-null.|
|includeAdditionalRegions|Int16 collection| A numbers-only set representing the country codes that can be manually added to enable telephony service in those regions, in addition to the list of countries that are already enabled. For more information about regions that require opt in, see [Regions that need to opt in for MFA telephony verification](/entra/external-id/customers/how-to-region-code-opt in). Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be positive integers and can't overlap with 'excludeRegions'. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.phoneOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.phoneOptions",
  "defaultRegions": [
    "Integer"
  ],
  "includeAdditionalRegions": [
    "Integer"
  ],
  "excludeRegions": [
    "Integer"
  ]
}
```

