---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups team put --group-id {group-id} --body '{\
  "memberSettings": {\
    "allowCreateUpdateChannels": true\
  },\
  "messagingSettings": {\
    "allowUserEditMessages": true,\
    "allowUserDeleteMessages": true\
  },\
  "funSettings": {\
    "allowGiphy": true,\
    "giphyContentRating": "strict"\
  },\
  "discoverySettings": {\
    "showInTeamsSearchAndSuggestions": true\
  }\
}\
'

```