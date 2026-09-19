<#import "template.ftl" as layout>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Dory Core</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {
            colors: {
              primary: '#5865f2', 
            }
          }
        }
      }
    </script>
</head>
<body class="bg-slate-50 font-sans min-h-screen flex items-center justify-center p-4">
    <div class="w-full max-w-4xl bg-white rounded-[3rem] shadow-2xl overflow-hidden grid grid-cols-1 md:grid-cols-2">
        
        <!-- Left Panel -->
        <div class="hidden md:block relative bg-slate-900">
            <img src="https://images.unsplash.com/photo-1593114051525-9cc49e412a40?q=80&w=2070&auto=format&fit=crop" class="absolute inset-0 w-full h-full object-cover opacity-40" alt="Sistema" />
            <div class="absolute inset-0 bg-gradient-to-t from-slate-900/80 via-slate-900/40 to-transparent"></div>
            <div class="absolute bottom-12 left-12 right-12 text-white">
                <div class="w-12 h-12 bg-white rounded-2xl flex items-center justify-center rotate-12 mb-6 shadow-xl text-slate-900 font-black text-2xl italic">D</div>
                <h2 class="text-5xl font-black italic uppercase tracking-tighter leading-none mb-4">
                    PANEL<br />
                    <span class="text-primary">ADMIN</span>
                </h2>
                <p class="text-slate-300 font-medium text-base leading-relaxed">
                    Gestiona el sistema desde un solo lugar.
                </p>
            </div>
        </div>

        <!-- Right Panel (Form) -->
        <div class="p-8 md:p-12 flex flex-col justify-center">
            <div class="flex items-center gap-2 mb-6">
                <div class="w-9 h-9 bg-slate-900 rounded-xl flex items-center justify-center font-black text-white italic text-lg shadow">D</div>
                <span class="text-slate-900 font-black italic text-xl tracking-tighter uppercase">Dory Core</span>
            </div>
            <h3 class="text-3xl font-black text-slate-900 italic tracking-tighter uppercase mb-1">Iniciar Sesión</h3>
            <p class="text-slate-500 text-sm">Ingresa tus credenciales de acceso al panel de gestión.</p>

            <form action="${url.loginAction}" method="post" class="space-y-5 mt-6" novalidate>
                <div>
                    <label class="block text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] mb-2">Usuario o Correo</label>
                    <input tabindex="1" id="username" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" placeholder="ej. admin@dory.com" required
                        class="w-full bg-slate-50 border border-slate-200 rounded-2xl px-6 py-4 text-slate-900 focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all" />
                </div>
                <div>
                    <label class="block text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] mb-2">Contraseña Maestra</label>
                    <div class="relative">
                        <input tabindex="2" id="password" name="password" type="password" autocomplete="off" placeholder="••••••••" required
                            class="w-full bg-slate-50 border border-slate-200 rounded-2xl px-6 py-4 pr-14 text-slate-900 focus:ring-2 focus:ring-primary focus:border-primary outline-none transition-all" />
                        <button type="button" onclick="togglePassword()" class="absolute right-4 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-700 transition-colors p-1">
                            <svg id="eye-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-eye"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/><circle cx="12" cy="12" r="3"/></svg>
                        </button>
                    </div>
                </div>

                <#if message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                    <div class="text-red-500 text-xs font-bold text-center bg-red-50 border border-red-100 rounded-xl py-2">
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                </#if>

                <button tabindex="4" type="submit" name="login" id="kc-login"
                    class="w-full py-4 mt-2 bg-primary text-white font-black uppercase tracking-widest rounded-2xl hover:bg-primary/90 active:scale-95 transition-all flex justify-center items-center gap-2 shadow-lg shadow-primary/20">
                    Acceder al Panel
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-right"><path d="m9 18 6-6-6-6"/></svg>
                </button>
            </form>
        </div>
    </div>

    <script>
        function togglePassword() {
            const input = document.getElementById('password');
            const icon = document.getElementById('eye-icon');
            if (input.type === 'password') {
                input.type = 'text';
                // Eye Off SVG
                icon.innerHTML = '<path d="M9.88 9.88a3 3 0 1 0 4.24 4.24"/><path d="M10.73 5.08A10.43 10.43 0 0 1 12 5c7 0 10 7 10 7a13.16 13.16 0 0 1-1.67 2.68"/><path d="M6.61 6.61A13.526 13.526 0 0 0 2 12s3 7 10 7a9.74 9.74 0 0 0 5.39-1.61"/><line x1="2" x2="22" y1="2" y2="22"/>';
            } else {
                input.type = 'password';
                // Eye SVG
                icon.innerHTML = '<path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/><circle cx="12" cy="12" r="3"/>';
            }
        }
    </script>
</body>
</html>
