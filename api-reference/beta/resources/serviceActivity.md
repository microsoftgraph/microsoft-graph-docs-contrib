---
title: "serviceActivity resource type"
description: "A placeholder to allow for the desired URL path for Microsoft Entra service activity."
author: "zachpeng"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# serviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A placeholder to allow for the desired URL path for Microsoft Entra service activity .

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return Type|Description|
|:---|:---|:---|
|[getMetricsForMfaSignInSuccess](../api/serviceActivity-getMetricsForMfaSignInSuccess.md)|[serviceActivityValueMetric](./serviceActivityValueMetric.md) collection|Number of times users successfully completing interactive MFA sign ins using Microsoft Entra MFA cloud service.|
|[getMetricsForMfaSignInFailure](../api/serviceActivity-getMetricsForMfaSignInFailure.md)|[serviceActivityValueMetric](./serviceActivityValueMetric.md) collection|Number of times users failed to complete interactive MFA sign ins using Microsoft Entra MFA cloud service. A failure sign-in case can be users abandoning or canceling MFA requests, refreshing MFA sessions without doing interactive MFA, or using passwordless methods do not count at this time.|
|[getMetricsForConditionalAccessManagedDevicesSignInSuccess](../api/serviceActivity-getMetricsForConditionalAccessManagedDevicesSignInSuccess.md)|[serviceActivityValueMetric](./serviceActivityValueMetric.md) collection|Number of user authentication requests that successfully satisfy a Conditional Access policy that requires devices be managed. Managed devices are computers joined to and managed by your on-premises directory and hybrid joined to Microsoft Entra.|
|[getMetricsForConditionalAccessCompliantDevicesSignInSuccess](../api/serviceActivity-getMetricsForConditionalAccessCompliantDevicesSignInSuccess.md)|[serviceActivityValueMetric](./serviceActivityValueMetric.md) collection|Number of user authentication requests that successfully satisfy a Conditional Access policy that requires devices compliance. Compliant devices are managed by Microsoft Intune and can be mobile iOS/Android devices, tablets, or cloud Microsoft Entra joined computers (not hybrid).|
|[getMetricsForSamlSignInSuccess](../api/serviceActivity-getMetricsForSamlSignInSuccess.md)|[serviceActivityValueMetric](./serviceActivityValueMetric.md) collection|Number of SAML 2.0 authentication successfully processed by the Microsoft Entra cloud service for the tenant. This health signal currently does not include WS-FED/SAML 1.1 apps integrated with Microsoft Entra.|

## Properties

None.

## Relationships

None.

## JSON representation

This entity can not be viewed as it is only a placeholder.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceActivity",
}
```