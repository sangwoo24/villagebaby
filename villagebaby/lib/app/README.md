### App Layer

App Layer 는 Presentation Layer 와 동일하게 사용자에게 노출되는 영역을 담당합니다. 기본적으로 화면을 구성하는 UI와, 해당 UI 에 대한 상태관리 및 App 을 사용하는데에 필요한 기능들이 있는 Layer 입니다.

위젯, 페이지, 상태관리 및 App 에서 사용되는 core 단 으로 이루어져 있습니다.

<br>

📚 App Layer의 File Structure

- `module` : 각 Feature 들이 있는 폴더입니다. 상태 관리를 Bloc 패턴으로 사용했기 때문에, 각 Feature 들은 View, Bloc, State 파일로 구성되어 있습니다.

- `global` : 전역적으로 사용되는 것들이 있으며, widget, manager, service, extension 등으로 구성됩니다.