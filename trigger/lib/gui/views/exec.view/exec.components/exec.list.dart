import 'package:flutter/material.dart';
import 'package:trigger/bl/models/cmdset.model/cmdset.model.dart';
import 'package:trigger/bl/models/cmd.model/cmd.model.dart';
import 'package:trigger/gui/views/exec.view/exec.components/command.text.dart';

import '../geticon.dart';
import 'sudo.badge.dart';

class ExecList2 extends StatelessWidget {
  final CommandsSetModel commandsSet;
  final Function(String) executeCommand;

  const ExecList2({
    super.key,
    required this.commandsSet,
    required this.executeCommand,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: commandsSet.commands.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final command = commandsSet.commands.elementAt(index);
        return _buildCommandItem(context, command);
      },
    );
  }

  Widget _buildCommandItem(BuildContext context, CommandModel command) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            // color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => executeCommand(command.id),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                  width: 4,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  // Icon container
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).primaryColor.withOpacity(0.7),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      getIcon(command.icon),
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header row with name and sudo badge
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                command.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF2D3748),
                                ),
                              ),
                            ),
                            if (command.sudo) ...[
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF6B6B),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'SUDO',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        if (command.description?.isNotEmpty == true) ...[
                          const SizedBox(height: 4),
                          Text(
                            command.description!,
                            style: const TextStyle(
                              color: Color(0xFF718096),
                              fontSize: 14,
                              height: 1.4,
                            ),
                          ),
                        ],
                        const SizedBox(height: 8),
                        // Command text
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7FAFC),
                            borderRadius: BorderRadius.circular(6),
                            border: const Border(
                              left: BorderSide(
                                color: Color(0xFF667EEA),
                                width: 3,
                              ),
                            ),
                          ),
                          child: Text(
                            '\$ ${command.command}',
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 13,
                              color: Color(0xFF2D3748),
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Extension para mejorar la interactividad con hover effect
class ExecListWithHover extends StatefulWidget {
  final CommandsSetModel commandsSet;
  final Function(String) executeCommand;

  const ExecListWithHover({
    super.key,
    required this.commandsSet,
    required this.executeCommand,
  });

  @override
  State<ExecListWithHover> createState() => _ExecListWithHoverState();
}

class _ExecListWithHoverState extends State<ExecListWithHover> {
  String? hoveredCommandId;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: widget.commandsSet.commands.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final command = widget.commandsSet.commands.elementAt(index);
        return _buildCommandItemWithHover(context, command);
      },
    );
  }

  Widget _buildCommandItemWithHover(
    BuildContext context,
    CommandModel command,
  ) {
    final isHovered = hoveredCommandId == command.id;

    return MouseRegion(
      onEnter: (_) => setState(() => hoveredCommandId = command.id),
      onExit: (_) => setState(() => hoveredCommandId = null),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..translate(isHovered ? 5.0 : 0.0, 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(isHovered ? 0.12 : 0.08),
              blurRadius: isHovered ? 20 : 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => widget.executeCommand(command.id),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border(
                  left: BorderSide(
                    color: isHovered
                        ? Theme.of(context).primaryColor
                        : const Color(0xFFE2E8F0),
                    width: 4,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // Icon container with animation
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColor.withOpacity(0.7),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: isHovered
                            ? [
                                BoxShadow(
                                  color: Theme.of(
                                    context,
                                  ).primaryColor.withOpacity(0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : null,
                      ),
                      child: Icon(
                        getIcon(command.icon),
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header row with name and sudo badge
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  command.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: isHovered
                                        ? Theme.of(context).primaryColor
                                        : const Color(0xFF2D3748),
                                  ),
                                ),
                              ),
                              if (command.sudo) ...[const SudoBadge()],
                            ],
                          ),
                          if (command.description?.isNotEmpty == true) ...[
                            const SizedBox(height: 4),
                            Text(
                              command.description!,
                              style: const TextStyle(fontSize: 14, height: 1.4),
                            ),
                          ],
                          const SizedBox(height: 8),
                          // Command text
                          CommandText(
                            command: command.command,
                            isHovered: isHovered,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
