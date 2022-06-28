package xyz.meldlabs.tcpserver.events;

import xyz.meldlabs.tcpserver.TcpConnection;
import xyz.meldlabs.tcpserver.events.args.OnSocketDataReceivedArgs;

public interface OnSocketDataReceived {
  public void onDataReceived(TcpConnection sender, OnSocketDataReceivedArgs args);
}
