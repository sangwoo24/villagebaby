### villagebaby

<br>

```
Clean Architecture 란 각 Layer의 명확한 관심사 분리에서 시작된다고 생각하며,
아래와 같이 크게 세 개의 Layer 로 분리해봤습니다.
```

- 🥨 [`App Layer`](https://github.com/sangwoo24/villagebaby/tree/main/villagebaby/lib/app)

- 🍳 [`Domain Layer`](https://github.com/sangwoo24/villagebaby/tree/main/villagebaby/lib/domain)

- 🍕 [`Data Layer`](https://github.com/sangwoo24/villagebaby/tree/main/villagebaby/lib/data)

<br>

#### 요구사항 3

a. 클린 아키텍쳐를 적용하는 것은, 관심사를 명확하게 분리하고 각 계층을 독립적으로 구축함으로써 테스트에 용이하도록 하고, 유지보수 및 확장 가능하도록 해줍니다. 

기존에도 몇 개의 계층으로 나눠 사용해왔지만, 각 계층이 정확히 무슨 일을 하는지 몰라 계층의 분리가 제대로 되지 않았습니다 `ex. UI와 관련 없는 계층에서 라우팅을 함`

아키텍쳐를 설계할 때, 각 계층이 하는 일을 명확하게 구분하여 사용할 필요성을 느꼈고, 개발자는 팀으로 일하는 경우가 많기 때문에 다른 팀원들이 납득할 수 있는 기준으로 분리해야 할 것 같다고 생각합니다.

<br>

b. Counting 기능에 초점을 맞추어 다음과 같은 몇 가지의 기능을 추가해봤습니다.

- Counter 버튼 중복 채터링 방지
- Counter 값 초기화
- Hive 패키지를 사용하여 Local DB 에 Count값 저장