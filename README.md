# Project 3 - *Kraken Twitter*

**Kraken Twitter** is a basic twitter app to read and compose tweets from the [Twitter API](https://apps.twitter.com/).

Time spent: **∞** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can sign in using OAuth login flow.
- [x] User can view last 20 tweets from their home timeline.
- [x] The current signed in user will be persisted across restarts.
- [x] In the home timeline, user can view tweet with the user profile picture, username, tweet text, and timestamp.  In other words, design the custom cell with the proper Auto Layout settings.  You will also need to augment the model classes.
- [x] User can pull to refresh.
- [x] User can compose a new tweet by tapping on a compose button.
- [x] User can tap on a tweet to view it, with controls to retweet, favorite, and reply.

The following **optional** features are implemented:

- [x] When composing, you should have a countdown in the upper right for the tweet limit.
- [x] After creating a new tweet, a user should be able to view it in the timeline immediately without refetching the timeline from the network.
- [x] Retweeting and favoriting should increment the retweet and favorite count.
- [x] User should be able to unretweet and unfavorite and should decrement the retweet and favorite count.
- [x] Replies should be prefixed with the username and the reply_id should be set when posting the tweet,
- [x] User can load more tweets once they reach the bottom of the feed using infinite loading similar to the actual Twitter client.

The following **additional** features are implemented:

- [x] Played with a GIF intro screen to give the app more life.
- [x] ActiveLabel was implemented to allow user to click on URLs to take them to the associated URL.
- [x] Embedded action and word count left to the keyboard to make it feel more like Twitter.
- [x] Added animations to the Tweet Detail view bouncing action buttons (reply, retweet and like) - see video below.
- [x] Used Extensions to extend UI elements and provide helper functions.
- [x] Used Custom Fonts.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://github.com/semerda/CodePath-Twitter/blob/master/Assets/twitter-anim-v1.gif' title='Kraken Twitter Video Walkthrough' width='' alt='Kraken Twitter Video Walkthrough' loop=infinite />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Open-source libraries used

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - a delightful networking framework for iOS, OS X, watchOS, and tvOS.
- [BDBOAuth1Manager](https://github.com/bdbergeron/BDBOAuth1Manager) - OAuth 1.0a library for AFNetworking
- [MBProgressHUD](https://github.com/jdg/MBProgressHUD) - an iOS drop-in class that displays a translucent HUD with an indicator and/or labels while work is being done in a background thread.
- [SwiftyGif](https://github.com/kirualex/SwiftyGif) - High performance GIF engine
- [ActiveLabel](https://github.com/optonaut/ActiveLabel.swift) - UILabel drop-in replacement supporting Hashtags (#), Mentions (@) and URLs (http://)

## License

Visit [www.ernestsemerda.com](http://www.ernestsemerda.com/)

    Copyright 2016 Ernest Semerda (http://www.ernestsemerda.com/)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.