---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamworkCustomEmoji = {
    displayName: 'thumbsup_custom',
    contentBytes: 'iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAABGhJREFU...'
};

await client.api('/teamwork/messaging/customEmojis')
	.version('beta')
	.post(teamworkCustomEmoji);

```