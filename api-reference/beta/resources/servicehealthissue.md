---
title: "serviceHealthIssue resource type"
description: "Represents a service health issue in a service."
author: "payiAzure"
ms.localizationpriority: medium
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceHealthIssue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a service health issue in a service.

The service health issue can be a service incident or service advisory. For example:

* Service incident: "Exchange mailbox service is down".
* Service advisory: "Users may experience delays in emails reception".

Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get serviceHealthIssue](../api/servicehealthissue-get.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Retrieve the properties and relationships of a [serviceHealthIssue](../resources/servicehealthissue.md) object. |
|[Get post-incident review report](../api/servicehealthissue-incidentreport.md)|Stream|Get the post incident report (PIR) document of a specified service issue for tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|serviceHealthClassificationType|The type of service health issue. Possible values are: `advisory`, `incident`, `unknownFutureValue`.|
|details|Collection([keyValuePair](../resources/keyvaluepair.md))|Additional details about the service health issue. This property doesn't support filters. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|endDateTime|DateTimeOffset|The end time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|feature|String|The feature name of the service issue.|
|featureGroup|String|The feature group name of the service issue.|
|id|String|The id of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|impactDescription|String|The description of the service issue impact.|
|isResolved|Boolean|Indicates whether the issue is resolved.|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|origin|serviceHealthOrigin|Indicates the origin of the service issue. Possible values are: `microsoft`, `thirdParty`, `customer`, `unknownFutureValue`.|
|posts|Collection([serviceHealthIssuePost](../resources/servicehealthissuepost.md))|Collection of historical posts for the service issue.|
|service|String|Indicates the service affected by the issue.|
|startDateTime|DateTimeOffset|The start time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|status|serviceHealthStatus|The status of the service issue. Possible values are: `serviceOperational`, `investigating`, `restoringService`, `verifyingService`, `serviceRestored`, `postIncidentReviewPublished`, `serviceDegradation`, `serviceInterruption`, `extendedRecovery`, `falsePositive`, `investigationSuspended`, `resolved`, `mitigatedExternal`, `mitigated`, `resolvedExternal`, `confirmed`, `reported`, `unknownFutureValue`. For more details, see [serviceHealthStatus values](#servicehealthstatus-values).|
|title|String|The title of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|

### serviceHealthStatus values
|Member|Description|
|:---|:---|
|serviceOperational|The service is healthy and no issues have been identified.|
|investigating|A potential issue was identified and more information is being gathered about what's going on and the scope of impact.|
|restoringService|The cause of the issue has been identified, and action is being taken to bring the service back to a healthy state.|
|verifyingService|The action has been taken to mitigate the issue and we're verify that the service is healthy.|
|serviceRestored|The corrective action has resolved the underlying problem and the service has been restored to a healthy state. To find out what went wrong, view the issue details.|
|postIncidentReviewPublished|A post-incident report for a specific issue that includes root cause information has been published, with next steps to ensure a similar issue doesn't reoccur.|
|serviceDegradation|An issue is confirmed that may affect use of a service or feature. You might see this status if a service is performing more slowly than usual, there are intermittent interruptions, or if a feature isn't working, for example.|
|serviceInterruption|You'll see this status if an issue is determined to affect the ability for users to access the service. In this case, the issue is significant and can be reproduced consistently.|
|extendedRecovery|This status indicates that corrective action is in progress to restore the service to most users but will take some time to reach all the affected systems. You might also see this status if a temporary fix is made to reduce impact while a permanent fix is waiting to be applied.|
|falsePositive|After a detailed investigation, the service is confirmed to be healthy and operating as designed. No impact to the service was observed or the cause of the incident originated outside of the service. Incidents and advisories with this status appear in the history view until they expire (after the period of time stated in the final post for that event).|
|investigationSuspended|If our detailed investigation of a potential issue results in a request for additional information from customers to allow the service team to investigate further, you'll see this status. If service team need you to act, they'll let you know what data or logs they need.|
|resolved|Reserved for future use.|
|mitigatedExternal|Reserved for future use.|
|mitigated|Reserved for future use.|
|resolvedExternal|Reserved for future use.|
|confirmed|Reserved for future use.|
|reported|Reserved for future use.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealthIssue",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssue",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "id": "String (identifier)",
  "impactDescription": "String",
  "classification": "String",
  "origin": "String",
  "posts": [
    {
      "@odata.type": "microsoft.graph.serviceHealthIssuePost"
    }
  ],
  "status": "String",
  "service": "String",
  "feature": "String",
  "featureGroup": "String",
  "isResolved": "Boolean"
}
```

