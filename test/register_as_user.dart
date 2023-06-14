import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Registration Test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Admin registration test', () async {
      // Navigate to the registration page
      await driver.tap(find.byType('RegisterScreen'));

      // Fill in the user details
      await driver.tap(find.byValueKey('nameField'));
      await driver.enterText('John Doe');
      await driver.tap(find.byValueKey('emailField'));
      await driver.enterText('admin@example.com');
      await driver.tap(find.byValueKey('passwordField'));
      await driver.enterText('password');

      // Choose "admin" as the login type
      await driver.tap(find.byValueKey('adminLoginTypeButton'));

      // Submit the registration form
      await driver.tap(find.byValueKey('submitButton'));

      // Wait for the verification email to be sent
      await driver.waitFor(find.text('Verification email sent'));

      // Check if the admin account was created
      bool isAdminAccountCreated = await driver
          .waitFor(find.text('Admin account created'), timeout: Duration(seconds: 5))
          .catchError((_) => false);

      expect(isAdminAccountCreated, isTrue);
    });
  });
}
