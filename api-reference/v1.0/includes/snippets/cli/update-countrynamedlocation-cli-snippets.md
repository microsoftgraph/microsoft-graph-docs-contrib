---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity conditional-access named-locations patch --named-location-id {namedLocation-id} --body '{\
    "@odata.type": "#microsoft.graph.countryNamedLocation",\
    "displayName": "Updated named location without unknown countries and regions",\
    "countriesAndRegions": [\
        "CA",\
        "IN"\
    ],\
    "includeUnknownCountriesAndRegions": false\
}\
'

```