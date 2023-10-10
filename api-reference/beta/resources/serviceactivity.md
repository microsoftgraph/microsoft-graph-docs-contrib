---
title: "serviceActivity resource type"
description: "A placeholder to allow for the desired URL path for the Microsoft Entra service activity."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# serviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A placeholder to allow for the desired URL path for the Microsoft Entra service activity.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getMetricsForMfaSignInSuccess](../api/serviceactivity-getmetricsformfasigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users successfully completed interactive MFA sign-ins using the Microsoft Entra MFA cloud service over a given time range.|
|[getMetricsForMfaSignInFailure](../api/serviceactivity-getmetricsformfasigninfailure.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users fail to complete interactive MFA sign-ins using the Microsoft Entra MFA cloud service over a given time range. A failure sign-in case can be users abandoning or canceling MFA requests, refreshing MFA sessions without doing interactive MFA, or using passwordless methods that aren't counted as MFA sign-ins.|
|[getMetricsForConditionalAccessManagedDevicesSignInSuccess](../api/serviceactivity-getmetricsforconditionalaccessmanageddevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, over a given time range, that successfully satisfy a Conditional Access policy requiring devices to be managed. Managed devices are computers joined to and managed by your on-premises directory and hybrid devices joined to Microsoft Entra.|
|[getMetricsForConditionalAccessCompliantDevicesSignInSuccess](../api/serviceactivity-getmetricsforconditionalaccesscompliantdevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, over a given time range that successfully satisfy a Conditional Access policy requiring device compliance. Compliant devices are managed by Microsoft Intune and can be mobile iOS/Android devices, tablets, or cloud Microsoft Entra-joined computers (not hybrid).|
|[getMetricsForSamlSignInSuccess](../api/serviceactivity-getmetricsforsamlsigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of SAML 2.0 authentications successfully processed by the Microsoft Entra cloud service for the tenant over a given time range. This data currently doesn't include WS-FED/SAML 1.1 apps integrated with the Microsoft Entra.|

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
