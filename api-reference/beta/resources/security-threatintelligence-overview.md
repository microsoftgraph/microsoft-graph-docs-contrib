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
|[List articles](../api/security-article-list.md)|[microsoft.graph.security.article](../resources/security-article.md) collection|Get the article resources from the articles navigation property.|
|[Get article](../api/security-article-get.md)|[microsoft.graph.security.article](../resources/security-article.md) |Get the article resources from the articles navigation property.|
|[Get articleIndicator](../api/security-articleindicator-get.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) |Get the articleIndicator resources from the articleIndicators navigation property.|
|[Get host](../api/security-host-get.md)|[microsoft.graph.security.host](../resources/security-host.md) |Get the host resources from the hosts navigation property.|
|[Get hostComponent](../api/security-hostcomponent-get.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) |Get the hostComponent resources|
|[Get hostCookie](../api/security-hostcookie-get.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) |Get the hostCookie resources from the hostCookies navigation property.|
|[Get hostTracker](../api/security-hostTracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) |Get the hostTracker resource from the trackers navigation property.|
|[Get intelProfileIndicators](../api/security-intelligenceprofileindicator-get.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the intelligenceProfileIndicator resources from the intelProfileIndicators navigation property.|
|[List intelProfiles](../api/security-intelligenceprofile-list.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get the intelligenceProfile resources from the intelProfiles navigation property.|
|[Get hostTracker](../api/security-hostTracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) |Get the hostTracker resource from the trackers navigation property.|
|[Get passiveDnsRecord](../api/security-passiveDnsRecord-get.md)|[microsoft.graph.security.passiveDnsRecord](../resources/security-passiveDnsRecord.md) |Get the hostTracker resource from the trackers navigation property.|
|[List vulnerabilities](../api/security-vulnerability-list.md)|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|Get the vulnerability resources from the vulnerabilities navigation property.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|articles|[microsoft.graph.security.article](../resources/security-article.md) collection|Returns a list of `aricles`.|
|articleIndicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Refers to indicators of threat or compromise highlighted in an [microsoft.graph.security.article](../resources/security-article.md). **Note**: List retrieval is not yet supported.|
|hosts|[microsoft.graph.security.host](../resources/security-host.md) collection|Refers to [microsoft.graph.security.host](../resources/security-host.md)s that Microsoft Threat Intelligence has observed. **Note**: List retrieval is not yet supported.|
|hostComponents|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Retrieve details about [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)s. **Note**: List retrieval is not yet supported.|
|hostCookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Retrieve details about [microsoft.graph.security.hostCookie](../resources/security-hostCookie.md)s. **Note**: List retrieval is not yet supported.|
|hostTrackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Retrieve details about [microsoft.graph.security.hostTracker](../resources/security-hostTracker.md)s. **Note**: List retrieval is not yet supported.|
|intelProfiles|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Intelligence Profiles provide the most up-to-date threat actor and tooling infrastructure visibility in the industry today, enabling Threat Intel and SecOps teams to streamline their advanced threat hunting and analysis workflows.|
|intelProfileIndicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Refers to indicators of threat or compromise highlighted in an [microsoft.graph.security.intelligenceprofile](../resources/security-intelligenceprofile.md). **Note**: List retrieval is not yet supported.|
|passiveDnsRecords|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Retrieve details about [microsoft.graph.security.passiveDnsRecord](../resources/security-passiveDnsRecord.md)s. **Note**: List retrieval is not yet supported.|
|vulnerabilities|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|**TODO: Add Description**|

