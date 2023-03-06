---
title: "threatIntelligence resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# Use the Microsoft Graph Threat Intelligence APIs

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Threat Intelligence APIs delivers world-class threat intelligence to help protect your organization from modern cyber threats. Using Microsoft Threat Intelligence APIs you can identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

Microsoft's Threat Intelligence APIs (Preview) allow you to operationalize intelligence found within the user interface. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including IoCs and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List articleIndicators](../api/security-article-list-indicators.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Get the articleIndicator resources from the articleIndicators navigation property.|
|[List articles](../api/security-threatintelligence-list-articles.md)|[microsoft.graph.security.article](../resources/security-article.md) collection|Get the article resources from the articles navigation property.|
|[List components](../api/security-hostname-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[List cookies](../api/security-hostname-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[List hosts](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the hosts navigation property.|
|[List intelProfileIndicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the intelligenceProfileIndicator resources from the intelProfileIndicators navigation property.|
|[List intelProfiles](../api/security-threatintelligence-list-intelprofiles.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get the intelligenceProfile resources from the intelProfiles navigation property.|
|[Get hostTracker](../api/security-hostname-get-hostTracker.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resource from the trackers navigation property.|
|[List vulnerabilities](../api/security-threatintelligence-list-vulnerabilities.md)|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|Get the vulnerability resources from the vulnerabilities navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|articleIndicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|**TODO: Add Description**|
|articles|[microsoft.graph.security.article](../resources/security-article.md) collection|**TODO: Add Description**|
|hosts|[microsoft.graph.security.host](../resources/security-host.md) collection|**TODO: Add Description**|
|hostComponents|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|**TODO: Add Description**|
|hostCookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|**TODO: Add Description**|
|hostTrackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|**TODO: Add Description**|
|intelProfileIndicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|**TODO: Add Description**|
|intelProfiles|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Intelligence Profiles provide the most up-to-date threat actor and tooling infrastructure visibility in the industry today, enabling Threat Intel and SecOps teams to streamline their advanced threat hunting and analysis workflows.|
|passiveDnsRecords|[microsoft.graph.security.passiveDns](../resources/security-passivednsrecord.md) collection|**TODO: Add Description**|
|vulnerabilities|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatIntelligence",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligence"
}
```

