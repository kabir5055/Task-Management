import FlashNotification from "@/components/FlashNotification";
import useAuthorization from "@/hooks/useAuthorization";
import useWebSockets from "@/hooks/useWebSockets";
import NavBarNested from "@/layouts/NavBarNested";
import { Head, usePage } from "@inertiajs/react";
import { AppShell } from "@mantine/core";
import { useEffect } from "react";

export default function MainLayout({ children, title }) {
  window.can = useAuthorization().can;

  const { initUserWebSocket } = useWebSockets();

  useEffect(() => {
    initUserWebSocket();
  }, []);

  return (
    <AppShell
      navbar={{ width: 300, breakpoint: "sm", collapsed: { mobile: false } }}
      padding="4rem"
    >
      <Head title={title} />

      <FlashNotification />


      <AppShell.Navbar>
        <NavBarNested></NavBarNested>
      </AppShell.Navbar>

      <AppShell.Main>{children}</AppShell.Main>
    </AppShell>
  );
}
