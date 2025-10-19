import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _loading = false;
  bool _remember = false;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);
    await Future.delayed(const Duration(seconds: 1)); // mock auth
    setState(() => _loading = false);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Signed in')));
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.lock_outline, size: 60, color: Colors.blueGrey),
                  const SizedBox(height: 12),
                  const Text('Welcome back', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 18),
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Enter email';
                      if (!v.contains('@')) return 'Enter valid email';
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _passCtrl,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
                    validator: (v) {
                      if (v == null || v.length < 6) return 'Password must be at least 6 characters';
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(value: _remember, onChanged: (v) => setState(() => _remember = v ?? false)),
                      const Text('Remember me'),
                      const Spacer(),
                      TextButton(onPressed: () {}, child: const Text('Forgot password?')),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _loading ? null : _submit,
                      child: _loading
                          ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                          : const Text('Sign In'),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacementNamed('/register'),
                        child: const Text('Register'),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}