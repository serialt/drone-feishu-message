# drone-dingtalk-message

drone step
```
  - name: feishu notification
    pull: if-not-exists
    image: serialt/drone-feishu-message
    settings:
      token: 1ddfb805-xxxx-xxxx-xxxx-xxxxxxxx
      secret: GUUKIxxxxxxxxxxxxxx
      sha_link: true
    when:
      status: [failure, success]
```

参考:
* [drone-dingtalk-message](https://github.com/lddsb/drone-dingtalk-message/blob/master/LICENSE)
* [dingtalk](https://github.com/CatchZeng/dingtalk/blob/master/LICENSE)