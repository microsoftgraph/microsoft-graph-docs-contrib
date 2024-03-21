---
title: "serviceActivity resource type"
description: "A placeholder for the Microsoft Entra service activity URL."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# serviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A placeholder for the Microsoft Entra service activity URL.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getMetricsForMfaSignInSuccess](../api/serviceactivity-getmetricsformfasigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users successfully completed interactive MFA sign-ins using the Microsoft Entra MFA cloud service during a specified time period.|
|[getMetricsForMfaSignInFailure](../api/serviceactivity-getmetricsformfasigninfailure.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users fail to complete interactive MFA sign-ins using the Microsoft Entra MFA cloud service during a specified time period. Sign-in failures happen, for example, when users abandon or cancel MFA requests, or refresh MFA sessions without doing interactive MFA.|
|[getMetricsForConditionalAccessManagedDevicesSignInSuccess](../api/serviceactivity-getmetricsforconditionalaccessmanageddevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, during a specific time period, that satisfy a Conditional Access policy requiring devices to be managed. Managed devices are computers joined to and managed by your on-premises directory and hybrid devices joined to Microsoft Entra.|
|[getMetricsForConditionalAccessCompliantDevicesSignInSuccess](../api/serviceactivity-getmetricsforconditionalaccesscompliantdevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, during a specified time period, that satisfy a Conditional Access policy that requires device compliance. Microsoft Intune manages compliant devices, including mobile iOS/Android devices, tablets, or cloud Microsoft Entra-joined computers (not hybrid).|
|[getMetricsForSamlSignInSuccess](../api/serviceactivity-getmetricsforsamlsigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of SAML 2.0 authentications successfully processed by the Microsoft Entra cloud service for the tenant during a specified time period. This health signal currently doesn't include WS-FED/SAML 1.1 apps that are integrated with Microsoft Entra.|

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceActivity"
}
```
