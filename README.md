# TrackingKit

iOS библиотека определения координат местоположения.

## Подключение

Подключение библиотеки осуществляется через `Swift Package Manager`. В Xcode выберите в меню `File -> Swift Packages -> Add Package Dependency` и введите в поле адреса репозитория `https://github.com/maps-mailru/tracking-sdk-ios`.

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


Инициализируйте трекер с уникальным appKey вашего приложения и запустите определение координат.

```swift
tracker = Tracker(appKey: "Your app key")
tracker.startTracking()
```

Вы можете запустить определение координат сразу, передав при инициализации флаг `startTrackingImmediately`:

```swift
tracker = Tracker(appKey: "Your app key", startTrackingImmediately: true)
```

Если ваше приложение уже имеет разрешение на доступ к локации, определение координат начнется сразу. Иначе система запросит такое разрешение у пользователя. Запрашиваемый уровень доступа к локации - "Всегда".

Вы можете предотвратить явный запрос разрешения, указав параметр `requestPermission: false`:

```swift
tracker = Tracker(appKey: "Your app key", startTrackingImmediately: true, requestPermission: false)
```

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

Вы также можете включить запись логов в текстовые файлы:

```swift
Tracker.writeLogsToFiles = true
```

Zip-архив с файлами логов можно получить по URL `tracker.logs`.


Для отслеживания всех основных этапов работы трекера реализуйте протокол `TrackerDelegate` и назначьте соответствующее свойство трекеру:

```swift
tracker.delegate = self
```

Методы делегата вызываются на главной очереди.

## Работа с сервером

С некоторой периодичностью, данные о перемещениях пользователя будут отправляться на сервер.

После отправки сообщения, будет вызван соответствующий метод делегата:

```swift
func tracker(_ tracker: Tracker, didReport report: Report, storedLocations: [Location])
```

или, в случае ошибки:

```swift
func tracker(_ tracker: Tracker, didFailReport report: Report, withError error: Error)
```

Если вашему приложению необходимо передать дополнительные данные в сообщении серверу, вы можете вызвать один из следующих методов:

```swift
tracker.setAppInfo(key:value:)
tracker.setDeviceInfo(key:value:)
tracker.setUserInfo(key:value:)
```

Например:

```swift
tracker.setAppInfo(key: .custom("colorTheme"), value: ["dark"])
```

или

```swift
tracker.setUserInfo(key: .custom("age"), value: ["33"])
```

Если вы знаете идентификатор пользователя Mail.ru или в соц. сетях ВК/ОК, то необходимо использовать предопределённые значения ключей:

```swift
public enum ReportUserInfoKey {
    case mrgsIDs
    case vkIDs
    case okIDs
    ...
}

```

