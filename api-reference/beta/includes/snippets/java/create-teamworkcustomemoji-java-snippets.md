---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamworkCustomEmoji teamworkCustomEmoji = new TeamworkCustomEmoji();
teamworkCustomEmoji.setDisplayName("thumbsup_custom");
teamworkCustomEmoji.setContentBytes("iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAABGhJREFU...");
TeamworkCustomEmoji result = graphClient.teamwork().messaging().customEmojis().post(teamworkCustomEmoji);


```