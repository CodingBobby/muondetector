set(MUONDETECTOR_DAEMON_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/daemon/src")
set(MUONDETECTOR_DAEMON_HEADER_DIR "${CMAKE_CURRENT_SOURCE_DIR}/daemon/include")
set(MUONDETECTOR_DAEMON_CONFIG_DIR "${CMAKE_CURRENT_SOURCE_DIR}/daemon/config")


set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(Qt5_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5/")

find_package(Qt5 COMPONENTS Network SerialPort REQUIRED)

if(NOT WIN32) # added to make program editable in qt-creator on windows

find_library(PAHO_MQTT3C paho-mqtt3c REQUIRED)
find_library(PAHO_MQTT3A paho-mqtt3a REQUIRED)
find_library(PAHO_MQTT3CS paho-mqtt3cs REQUIRED)
find_library(PAHO_MQTT3AS paho-mqtt3as REQUIRED)
find_library(PAHO_MQTTPP3 paho-mqttpp3 REQUIRED)

find_library(CRYPTOPP crypto++ REQUIRED)
find_library(CONFIGPP config++ REQUIRED)
find_library(PIGPIOD_IF2 pigpiod_if2 REQUIRED)
find_library(RT rt REQUIRED)

endif()

set(MUONDETECTOR_DAEMON_SOURCE_FILES
    "${MUONDETECTOR_DAEMON_SRC_DIR}/main.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/qtserialublox.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/qtserialublox_processmessages.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/pigpiodhandler.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/daemon.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/custom_io_operators.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/filehandler.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/calibration.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/gpio_mapping.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/logengine.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/geohash.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/tdc7200.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cbusses.c"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/adafruit_ssd1306/adafruit_ssd1306.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/ads1115/ads1115.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/bme280/bme280.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/bmp180/bmp180.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/eeprom24aa02/eeprom24aa02.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/hmc5883/hmc5883.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/lm75/lm75.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/mcp4728/mcp4728.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/pca9536/pca9536.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/sht21/sht21.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/ubloxi2c/ubloxi2c.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/x9119/x9119.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/Adafruit_GFX.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/i2cdevice.cpp"
    "${MUONDETECTOR_DAEMON_SRC_DIR}/i2c/i2cdevices/glcdfont.c"
    )

set(MUONDETECTOR_DAEMON_HEADER_FILES
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/unixtime_from_gps.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/time_from_rtc.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/qtserialublox.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/daemon.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/pigpiodhandler.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/custom_io_operators.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/filehandler.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/calibration.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/logparameter.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/gpio_mapping.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/tdc7200.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/logengine.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/geohash.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/addresses.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/custom_i2cdetect.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cbusses.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/adafruit_ssd1306/adafruit_ssd1306.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/ads1015/ads1015.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/ads1115/ads1115.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/bme280/bme280.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/bmp180/bmp180.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/eeprom24aa02/eeprom24aa02.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/hmc5883/hmc5883.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/lm75/lm75.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/mcp4728/mcp4728.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/pca9536/pca9536.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/sht21/sht21.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/ubloxi2c/ubloxi2c.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/x9119/x9119.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/Adafruit_GFX.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/i2cdevices/i2cdevice.h"
    "${MUONDETECTOR_DAEMON_HEADER_DIR}/i2c/linux/i2c-dev.h"
    )

set(MUONDETECTOR_LOGIN_SOURCE_FILES
    "${MUONDETECTOR_DAEMON_SRC_DIR}/muondetector-login.cpp"
    )

set(MUONDETECTOR_LOGIN_INSTALL_FILES
    "${MUONDETECTOR_DAEMON_CONFIG_DIR}/muondetector-login"
    )

set(MUONDETECTOR_DAEMON_INSTALL_FILES
    "${MUONDETECTOR_DAEMON_CONFIG_DIR}/muondetector.conf"
    )

configure_file(
    "${MUONDETECTOR_DAEMON_CONFIG_DIR}/muondetector-daemon.1"
    "${CMAKE_CURRENT_BINARY_DIR}/muondetector-daemon.1"
    )
configure_file(
    "${MUONDETECTOR_DAEMON_CONFIG_DIR}/muondetector-login.1"
    "${CMAKE_CURRENT_BINARY_DIR}/muondetector-login.1"
    )


add_executable(muondetector-login ${MUONDETECTOR_LOGIN_SOURCE_FILES})
add_dependencies(muondetector-login muondetector-shared)

set_property(TARGET muondetector-login PROPERTY POSITION_INDEPENDENT_CODE 1)

target_include_directories(muondetector-login PUBLIC
    $<BUILD_INTERFACE:${LIBRARY_INCLUDE_DIR}>)
target_include_directories(muondetector-login PUBLIC
    $<BUILD_INTERFACE:/usr/local/include/mqtt>
    $<INSTALL_INTERFACE:include/mqtt>)

target_link_directories(muondetector-login PUBLIC "${CMAKE_CURRENT_BINARY_DIR}/output/lib/")
target_link_libraries(muondetector-login
    Qt5::Network Qt5::SerialPort
    crypto++
    paho-mqtt3c paho-mqtt3a paho-mqtt3cs paho-mqtt3as paho-mqttpp3
    muondetector
    )

add_executable(muondetector-daemon ${MUONDETECTOR_DAEMON_SOURCE_FILES} ${MUONDETECTOR_DAEMON_HEADER_FILES})
add_dependencies(muondetector-daemon muondetector-shared)

set_property(TARGET muondetector-daemon PROPERTY POSITION_INDEPENDENT_CODE 1)

target_include_directories(muondetector-daemon PUBLIC
    $<BUILD_INTERFACE:${MUONDETECTOR_DAEMON_HEADER_DIR}>
    $<BUILD_INTERFACE:${LIBRARY_INCLUDE_DIR}>)

target_include_directories(muondetector-daemon PUBLIC
    $<BUILD_INTERFACE:/usr/local/include/mqtt>
    $<INSTALL_INTERFACE:include/mqtt>
    )

target_link_directories(muondetector-daemon PUBLIC "${CMAKE_CURRENT_BINARY_DIR}/output/lib/")
target_link_libraries(muondetector-daemon
    Qt5::Network Qt5::SerialPort
    crypto++
    pigpiod_if2
    rt
    config++
    paho-mqtt3c paho-mqtt3a paho-mqtt3cs paho-mqtt3as paho-mqttpp3
    muondetector
    )


if (CMAKE_BUILD_TYPE STREQUAL Release)
    add_custom_command(TARGET muondetector-daemon POST_BUILD
            COMMAND ${CMAKE_STRIP} "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/muondetector-daemon")
    add_custom_command(TARGET muondetector-login POST_BUILD
            COMMAND ${CMAKE_STRIP} "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/muondetector-login")
endif ()




include(GNUInstallDirs)

add_custom_target(changelog-daemon ALL COMMAND gzip -cn9 "${MUONDETECTOR_DAEMON_CONFIG_DIR}/changelog" > "${CMAKE_CURRENT_BINARY_DIR}/changelog.gz")
add_custom_target(manpage-daemon ALL COMMAND gzip -cn9 "${CMAKE_CURRENT_BINARY_DIR}/muondetector-daemon.1" > "${CMAKE_CURRENT_BINARY_DIR}/muondetector-daemon.1.gz")
add_custom_target(manpage-login ALL COMMAND gzip -cn9 "${CMAKE_CURRENT_BINARY_DIR}/muondetector-login.1" > "${CMAKE_CURRENT_BINARY_DIR}/muondetector-login.1.gz")

install(TARGETS muondetector-daemon DESTINATION bin COMPONENT daemon)
install(TARGETS muondetector-login DESTINATION lib/muondetector/bin COMPONENT daemon)
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/changelog.gz" DESTINATION "${CMAKE_INSTALL_DOCDIR}" COMPONENT daemon)
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/muondetector-daemon.1.gz" DESTINATION "share/man/man1/" COMPONENT daemon)
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/muondetector-login.1.gz" DESTINATION "share/man/man1/" COMPONENT daemon)
install(FILES "${MUONDETECTOR_DAEMON_CONFIG_DIR}/copyright" DESTINATION "${CMAKE_INSTALL_DOCDIR}" COMPONENT daemon)
install(FILES ${MUONDETECTOR_DAEMON_INSTALL_FILES} DESTINATION "/etc/muondetector/" COMPONENT daemon)
install(FILES "${MUONDETECTOR_DAEMON_CONFIG_DIR}/muondetector-daemon.service" DESTINATION "/lib/systemd/system" COMPONENT daemon)
install(FILES "${MUONDETECTOR_DAEMON_CONFIG_DIR}/pigpiod.conf" DESTINATION "/etc/systemd/system/pigpiod.service.d/" COMPONENT daemon)
install(PROGRAMS ${MUONDETECTOR_LOGIN_INSTALL_FILES} DESTINATION bin COMPONENT daemon)



set(CPACK_DEBIAN_DAEMON_PACKAGE_DEPENDS "pigpiod, libpaho-mqttpp")
set(CPACK_DEBIAN_DAEMON_PACKAGE_CONTROL_EXTRA "${MUONDETECTOR_DAEMON_CONFIG_DIR}/preinst;${PROJECT_CONFIG_DIR}/postinst;${PROJECT_CONFIG_DIR}/prerm;${PROJECT_CONFIG_DIR}/conffiles")
set(CPACK_DEBIAN_DAEMON_PACKAGE_SECTION "net")
set(CPACK_DEBIAN_DAEMON_DESCRIPTION " GUI for monitoring and controlling the muondetector-daemon.
 It opens serial and i2c connections to the muondetector board.
 It runs in the background and sends the data to the central server.
 It is licensed under the GNU Lesser General Public License version 3 (LGPL v3).")
