---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const learningContent = {
    title: 'Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle',
    description: 'A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.',
    contentWebUrl: 'https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/',
    sourceName: 'MsLearn',
    thumbnailWebUrl: 'https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF',
    languageTag: 'en-us',
    numberOfPages: 9,
    duration: 'PT20M',
    format: 'Book',
    createdDateTime: '2018-01-01T00:00:00Z',
    lastModifiedDateTime: '2021-04-01T04:26:06.1995367Z',
    contributors: [
      'Lina Wagner',
      'Lisa Richter'
    ],
    additionalTags: [
        'Create private or public teams',
        'Add members to teams'
    ],
    skillTags: [
        'Create teams',
        'Teams channels',
        'Teams members'
    ],
    isActive: true,
    isPremium: false,
    isSearchable: true
};

await client.api('/employeeExperience/learningProviders/13727311-e7bb-470d-8b20-6a23d9030d70/learningContents/77029588-a660-46b6-ba58-3ce4d21d5678')
	.update(learningContent);

```