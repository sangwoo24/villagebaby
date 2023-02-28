### Data

Data Layer는 계층 중 가장 외부에 존재하면서, 서버, DB 등 다른 플랫폼을 통해 Data 에 접근합니다. 또한, 해당 계층에서 사용되는 Data 를 핸들링 하여 다른 Layer 로 전달합니다.

Data 객체인 dto와 Data 접근에 담당하는 provider 로 구성되어 있으며, provider 는 Local DB, Rest API 등 내/외부 플랫폼으로부터 Data 에 접근합니다.

<br>

📚 Data Layer 의 File Structure

- `dto` : Json 구조를 객체화 한 dto 들로 구성되어 있습니다.

- `provider` : 로컬 DB, API 등으로부터 접근되는 Json Data 를 객체화 하며, Domain 계층으로 넘겨주는 역할을 한다.