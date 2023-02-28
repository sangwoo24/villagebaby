### Domain

Domain Layer 는 UI 와 직접적인 관계가 없으며, 비지니스 로직에만 관련된 계층입니다. Data Layer 에서 전달받은 특정 Data 를 Presentation Layer 에서 사용할 수 있는 entity, model 등으로 변환하여 사용할 수 있도록 합니다.

entity, repository 로 구성되어 있으며, repository 의 실질적인 구현부를 담당하는 repository implements 가 존재합니다.

<br>

📚 Domain Layer 의 File Structure

- `entity` : App 의 비즈니스 객체로 사용되는 entity 들이 존재합니다.
  
- `repository` : Domain Layer 의 기능을 명세한 추상 클래스들로 구성되어 있습니다.

- `repository_impl` : Repository 의 구현부로 구성되어 있습니다.