---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams channels messages patch --team-id {team-id} --channel-id {channel-id} --chat-message-id {chatMessage-id} --body '{\
  "policyViolation": {\
    "policyTip": {\
      "generalText" : "This item has been blocked by the administrator.",\
      "complianceUrl" : "https://contoso.com/dlp-policy-page",\
      "matchedConditionDescriptions" : ["Credit Card Number"]\
    },\
    "verdictDetails" : "AllowOverrideWithoutJustification,AllowFalsePositiveOverride",\
    "dlpAction" : "BlockAccess"\
  }\
}\
'

```