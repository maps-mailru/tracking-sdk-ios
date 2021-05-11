# TrackingKit

iOS библиотека определения координат местоположения.

## Подключение

Подключение библиотеки осуществляется через `Swift Package Manager`. В Xcode выберите в меню `File -> Swift Packages -> Add Package Dependency` и введите в поле адреса репозитория `https://github.com/maps-mailru/tracking-sdk-ios`

Выберите `TrackingKit` и добавьте его к цели вашего приложения.

## Использование

Добавьте в ваше приложение следующиее Capabilities:

- Background Modes - Location updated. (oбязательно)
- Access WiFi Information. (не обязательно)

Добавьте в `Info.plist` следующие ключи (обязательно):

- NSLocationWhenInUseUsageDescription
- NSLocationAlwaysAndWhenInUseUsageDescription

Импортируйте `TrackingKit` в файл, где вы будете использовать трекер. Создайте свойство типа `Tracker` и держите сильную ссылку на него весь цикл работы приложения.

```swift
import TrackingKit

...

let tracker: Tracker
```


Инициализируйте трекер с уникальным appID вашего приложения и запуститетите определение координат.

```swift
tracker = Tracker(appID: "Your app ID")
tracker.startTracking()
```

Вы можете запустить определение координат сразу, передав при инициализации флаг `startTrackingImmediately`:

```swift
tracker = Tracker(appID: "Your app ID", startTrackingImmediately: true)
```

Если ваше приложение уже имеет разрешение на доступ к локации, определение координат начнется сразу. Иначе система запросит такое разрешение у пользователя.

Для приостановки отслеживания вызовите метод `stopTracking()`:

```swift
tracker.stopTracking()
```

Для возобновления отслеживания повторно вызовите `startTracking()`.

## Дополнительно

Вы можете получать сообщения о работе трекера в консоли, включив подробное логирование в свойстве класса:

```swift
Tracker.isDebugLoggingEnabled = true
```

Для отслеживания всех основных этапов работы трекера реализуйте протокол `TrackerDelegate` и назначьте соответствующее свойство трекеру:

```swift
tracker.delegate = self
```

Методы делегата вызываются на главной очереди.
