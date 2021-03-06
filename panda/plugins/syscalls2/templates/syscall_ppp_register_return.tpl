{%- for arch, syscalls in syscalls_arch|dictsort -%}
#ifdef {{architectures[arch].qemu_target}}
{%- for syscall_name, syscall in syscalls|dictsort %}
PPP_PROT_REG_CB(on_{{syscall.name}}_return)
{%- endfor %}
#endif
{% endfor %}
PPP_PROT_REG_CB(on_unknown_sys_return)
PPP_PROT_REG_CB(on_all_sys_return)

/* vim: set tabstop=4 softtabstop=4 noexpandtab ft=cpp: */
